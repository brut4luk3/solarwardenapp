import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../constants/constants.dart';

Future<Map<String, dynamic>> fetchSolarFlareApiDataWithDates(String startDate, String endDate) async {
  final url = Uri.parse('$nasaApiUrl?startDate=$startDate&endDate=$endDate&api_key=$nasaApiKey');

  final response = await http.get(url, headers: {'accept': 'application/json'});

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);

    if (data is List) {
      return {'solar_flares': data};
    } else if (data is Map<String, dynamic>) {
      return data;
    } else {
      throw Exception('Unexpected data format');
    }
  } else {
    throw Exception('Failed to load solar flares data');
  }
}