import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../constants/constants.dart';
import '../../../services/api/nasa/neo.dart';

String checkNull(dynamic value) {
  return value == null ? 'N/A' : value.toString();
}

Future<List<Map<String, dynamic>>> fetchData() async {
  final now = DateTime.now();
  final startOfWeek = now.subtract(Duration(days: now.weekday % 7));
  final startDate = '${startOfWeek.year}-${startOfWeek.month.toString().padLeft(2, '0')}-${startOfWeek.day.toString().padLeft(2, '0')}';
  final endDate = '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';

  final url = Uri.parse('$nasaApiUrl?startDate=$startDate&endDate=$endDate&api_key=$nasaApiKey');

  final response = await http.get(url, headers: {'accept': 'application/json'});

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as List;
    return data.map((item) {
      return item as Map<String, dynamic>;
    }).toList();
  } else {
    throw Exception('Failed to load data');
  }
}

Future<List<Map<String, dynamic>>> fetchNEOData() async {
  final data = await fetchNEOApiData();
  List<Map<String, dynamic>> neoList = [];
  (data['near_earth_objects'] as Map<String, dynamic>).forEach((date, neos) {
    (neos as List<dynamic>).forEach((neo) {
      if (neo['is_potentially_hazardous_asteroid']) {
        neoList.add({
          'id': checkNull(neo['id']),
          'neo_reference_id': checkNull(neo['neo_reference_id']),
          'name': checkNull(neo['name']),
          'nasa_jpl_url': checkNull(neo['nasa_jpl_url']),
          'absolute_magnitude_h': checkNull(neo['absolute_magnitude_h']),
          'estimated_diameter': {
            'kilometers': {
              'estimated_diameter_min': checkNull(neo['estimated_diameter']['kilometers']['estimated_diameter_min']),
              'estimated_diameter_max': checkNull(neo['estimated_diameter']['kilometers']['estimated_diameter_max']),
            },
            'meters': {
              'estimated_diameter_min': checkNull(neo['estimated_diameter']['meters']['estimated_diameter_min']),
              'estimated_diameter_max': checkNull(neo['estimated_diameter']['meters']['estimated_diameter_max']),
            },
            'miles': {
              'estimated_diameter_min': checkNull(neo['estimated_diameter']['miles']['estimated_diameter_min']),
              'estimated_diameter_max': checkNull(neo['estimated_diameter']['miles']['estimated_diameter_max']),
            },
            'feet': {
              'estimated_diameter_min': checkNull(neo['estimated_diameter']['feet']['estimated_diameter_min']),
              'estimated_diameter_max': checkNull(neo['estimated_diameter']['feet']['estimated_diameter_max']),
            },
          },
          'is_potentially_hazardous_asteroid': checkNull(neo['is_potentially_hazardous_asteroid']),
          'close_approach_data': (neo['close_approach_data'] as List<dynamic>).map((cad) {
            return {
              'close_approach_date': checkNull(cad['close_approach_date']),
              'close_approach_date_full': checkNull(cad['close_approach_date_full']),
              'epoch_date_close_approach': checkNull(cad['epoch_date_close_approach']),
              'relative_velocity': {
                'kilometers_per_second': checkNull(cad['relative_velocity']['kilometers_per_second']),
                'kilometers_per_hour': checkNull(cad['relative_velocity']['kilometers_per_hour']),
                'miles_per_hour': checkNull(cad['relative_velocity']['miles_per_hour']),
              },
              'miss_distance': {
                'astronomical': checkNull(cad['miss_distance']['astronomical']),
                'lunar': checkNull(cad['miss_distance']['lunar']),
                'kilometers': checkNull(cad['miss_distance']['kilometers']),
                'miles': checkNull(cad['miss_distance']['miles']),
              },
              'orbiting_body': checkNull(cad['orbiting_body']),
            };
          }).toList(),
          'is_sentry_object': checkNull(neo['is_sentry_object']),
        });
      }
    });
  });
  return neoList;
}