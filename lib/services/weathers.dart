import 'package:weather/services/location.dart';
import 'package:weather/services/networking.dart';

const apiKey = 'db20175fffc2ea226cfdf2d3af70f945';
const openWeatherMapUrl = 'https://samples.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
      '$openWeatherMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey',
    );

    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩️️ ';
    } else if (condition < 400) {
      return '🌧️ ';
    } else if (condition < 600) {
      return '☔ ';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫️ ';
    } else if (condition == 800) {
      return '🌞 ';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷🏻 ‍';
    }
  }

  String getMassage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'It\'s Time for a 🩳 and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
