import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime? {
  String toDateFormat() {
    if (this != null) {
      return DateFormat('MMMM dd, yyyy').format(this!.toLocal()).toString();
    }
    return "";
  }

  String toTimeFormat() {
    if (this != null) {
      return DateFormat.jm().format(this!.toLocal());
    }
    return "";
  }

  String toDay() {
    if (this != null) {
      return DateFormat.E().format(this!.toLocal());
    }
    return "";
  }

}
