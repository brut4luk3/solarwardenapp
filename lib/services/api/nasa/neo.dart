import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../constants/constants.dart';

Future<Map<String, dynamic>> fetchNEOApiData() async {
  final now = DateTime.now();
  final startDate = now.subtract(Duration(days: 2)).toString().split(' ')[0];
  final endDate = now.toString().split(' ')[0];

  final url = Uri.parse('$nasaNeoUrl?start_date=$startDate&end_date=$endDate&api_key=$nasaApiKey');

  final response = await http.get(url, headers: {'accept': 'application/json'});

  if (response.statusCode == 200) {
    return jsonDecode(response.body) as Map<String, dynamic>;
  } else {
    throw Exception('Failed to load data');
  }
}