import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../constants/constants.dart';

class NasaService {
  Future<void> fetchSolarFlares() async {
    final url = Uri.parse('$nasaApiUrl?startDate=2024-06-19&endDate=2024-06-20&api_key=$nasaApiKey');

    final response = await http.get(url, headers: {'accept': 'application/json'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print('Data: $data');
    } else {
      throw Exception('Failed to load solar flares data');
    }
  }
}