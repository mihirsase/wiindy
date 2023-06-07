class Weather {
  String? icon;
  String? description;
  int? code;

  Weather({
    this.icon,
    this.description,
    this.code,
  });

  static Weather fromJson(final Map<String, dynamic> json) {
    return Weather(
      icon: json['icon'],
      description: json['description'],
      code: json['code'],
    );
  }
}
