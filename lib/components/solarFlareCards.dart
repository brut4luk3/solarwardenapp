import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:solarwardenapp/translation/localization.dart';

class SolarFlareCard extends StatelessWidget {
  final Map<String, dynamic> item;

  const SolarFlareCard({Key? key, required this.item}) : super(key: key);

  String formatDate(String? dateStr) {
    if (dateStr == null) return 'N/A';
    DateTime date = DateTime.parse(dateStr).toLocal();
    return DateFormat('yyyy/MM/dd - HH:mm').format(date);
  }

  String getLocation(int? activeRegionNum) {
    return activeRegionNum != null
        ? "Active Region Number $activeRegionNum"
        : "Location N/A";
  }

  Widget getScaleIndicator(String? classType) {
    if (classType == null) return Container();

    Map<String, int> classTypeToLevel = {
      "M1": 4,
      "M2": 4,
      "M3": 4,
      "M4": 4,
      "M5": 3,
      "M6": 3,
      "M7": 3,
      "M8": 3,
      "M9": 3,
      "X1": 2,
      "X10": 1,
      "X20": 0,
    };

    int level = -1;
    classTypeToLevel.forEach((key, value) {
      if (classType.contains(key)) {
        level = value;
      }
    });

    return Column(
      children: [
        if (level == 0)
          const Icon(
            FontAwesomeIcons.arrowDown,
            color: Colors.red,
            size: 20,
          ),
        Container(
          height: 40,
          width: 40,
          color: Colors.red[900],
          child: const Center(
            child: Text(
              'R5',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        if (level == 1)
          const Icon(
            FontAwesomeIcons.arrowDown,
            color: Colors.red,
            size: 20,
          ),
        Container(
          height: 40,
          width: 40,
          color: Colors.red,
          child: const Center(
            child: Text(
              'R4',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        if (level == 2)
          const Icon(
            FontAwesomeIcons.arrowDown,
            color: Colors.red,
            size: 20,
          ),
        Container(
          height: 40,
          width: 40,
          color: Colors.orange,
          child: const Center(
            child: Text(
              'R3',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        if (level == 3)
          const Icon(
            FontAwesomeIcons.arrowDown,
            color: Colors.red,
            size: 20,
          ),
        Container(
          height: 40,
          width: 40,
          color: Colors.yellow,
          child: const Center(
            child: Text(
              'R2',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        if (level == 4)
          const Icon(
            FontAwesomeIcons.arrowDown,
            color: Colors.red,
            size: 20,
          ),
        Container(
          height: 40,
          width: 40,
          color: Colors.yellow[100],
          child: const Center(
            child: Text(
              'R1',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

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
                    '${localization.classType}: ${item['classType'] ?? 'N/A'}',
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
                    localization.beginTime ?? 'Begin Time',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    formatDate(item['beginTime']),
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
                    localization.peakTime ?? 'Peak Time',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    formatDate(item['peakTime']),
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
                    localization.endTime ?? 'End Time',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    formatDate(item['endTime']),
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
                    localization.location ?? 'Location',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    getLocation(item['activeRegionNum']),
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
                  if (item['note'] != null && item['note'].isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        width: 200,
                        child: Text(
                          item['note'],
                          style: const TextStyle(
                            color: Colors.white60,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            getScaleIndicator(item['classType']),
          ],
        ),
      ),
    );
  }
}