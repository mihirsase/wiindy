extension StringExtention on String? {
  DateTime? toDateTime() {
    if (this == null) {
      return null;
    } else if (this!.isEmpty) {
      return null;
    } else {
      return DateTime.parse(this!);
    }
  }
}
