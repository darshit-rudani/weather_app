import 'package:weather/services/location.dart';
import 'package:weather/services/networking.dart';

const apiKey = 'b71375fa3a2417dd7c0c0169839a7c72';
const openWeatherMapUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapUrl?q=$cityName&appid=$apiKey');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey');

    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ๏ธ๏ธ ';
    } else if (condition < 400) {
      return '๐ง๏ธ ';
    } else if (condition < 600) {
      return 'โ ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ๏ธ ';
    } else if (condition == 800) {
      return '๐ ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คท๐ป โ';
    }
  }

  String getMassage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'It\'s Time for a ๐ฉณ and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}
