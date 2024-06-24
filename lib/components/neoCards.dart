import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NeoCard extends StatelessWidget {
  final Map<String, dynamic> item;

  const NeoCard({Key? key, required this.item}) : super(key: key);

  String formatDate(String dateStr) {
    DateTime date = DateTime.parse(dateStr);
    return DateFormat('yyyy/MM/dd').format(date);
  }

  String formatNumber(dynamic value) {
    if (value == null) {
      return 'N/A';
    }
    try {
      return double.parse(value.toString()).toStringAsFixed(2);
    } catch (e) {
      return value.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    final neoData = item['close_approach_data'][0];
    final estimatedDiameter = item['estimated_diameter']['meters'];
    final relativeVelocity = double.parse(neoData['relative_velocity']['kilometers_per_hour']);
    final missDistance = double.parse(neoData['miss_distance']['kilometers']);

    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shadowColor: Colors.yellow,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name: ${item['name']}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.yellow,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Estimated Diameter:',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    'Min: ${formatNumber(estimatedDiameter['estimated_diameter_min'])} m, Max: ${formatNumber(estimatedDiameter['estimated_diameter_max'])} m',
                    style: const TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.yellow,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Close Approach Date:',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    formatDate(neoData['close_approach_date']),
                    style: const TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.yellow,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Relative Velocity:',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    '${formatNumber(relativeVelocity)} km/h',
                    style: const TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.yellow,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Miss Distance:',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    '${formatNumber(missDistance)} km',
                    style: const TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.yellow,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Orbiting Body:',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    '${neoData['orbiting_body']}',
                    style: const TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.yellow,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            if (missDistance < 18000000)
              const Icon(
                FontAwesomeIcons.skull,
                color: Colors.white,
                size: 40,
                shadows: [
                  Shadow(
                    blurRadius: 40.0,
                    color: Colors.yellowAccent,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}