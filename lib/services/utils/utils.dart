import 'package:intl/intl.dart';

String convertDateToBrazilianTimezone(String dateStr) {
  DateTime date = DateTime.parse(dateStr).toLocal();
  return DateFormat('yyyy-MM-dd HH:mm').format(date);
}