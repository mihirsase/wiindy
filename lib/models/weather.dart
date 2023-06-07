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

  String get weatherIcon {
    switch (code) {
      case 200:
      case 201:
      case 202:
      case 230:
      case 231:
        return 'lib/assets/weather/lightning-rain.png';
      case 232:
      case 233:
        return 'lib/assets/weather/lightning.png';
      case 300:
      case 301:
      case 500:
        return 'lib/assets/weather/light-rain.png';
      case 302:
      case 501:
      case 511:
      case 520:
        return 'lib/assets/weather/moderate-rain.png';
      case 502:
      case 522:
      case 900:
        return 'lib/assets/weather/heavy-rain.png';
      case 521:
        return 'lib/assets/weather/cloudy-rain.png';
      case 600:
      case 610:
      case 611:
      case 612:
        return 'lib/assets/weather/light-snow.png';
      case 601:
      case 621:
        return 'lib/assets/weather/moderate-snow.png';
      case 602:
      case 622:
      case 623:
        return 'lib/assets/weather/heavy-snow.png';
      case 700:
      case 711:
      case 721:
      case 731:
      case 741:
      case 751:
        return 'lib/assets/weather/fog.png';
      case 800:
        return 'lib/assets/weather/sunny.png';
      case 801:
      case 802:
        return 'lib/assets/weather/partially-cloudy.png';
      case 803:
      case 804:
        return 'lib/assets/weather/cloudy.png';
      default:
        return 'lib/assets/weather//sunny.png';
    }
  }
}
