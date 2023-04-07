class WeatherLocation {
  final String city;
  final String dateTime;
  final String temperature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    required this.city,
    required this.dateTime,
    required this.temperature,
    required this.weatherType,
    required this.iconUrl,
    required this.wind,
    required this.rain,
    required this.humidity,
  });
}

final locationList = [
  WeatherLocation(
    city: 'Swabi',
    dateTime: '02:22 PM - Monday, 3 April 2023',
    temperature: '15\u2103',
    weatherType: 'Night',
    iconUrl: 'assets/noon.svg',
    wind: 8,
    rain: 7,
    humidity: 82,
  ),
  WeatherLocation(
    city: 'Peshawar',
    dateTime: '02:22 PM - Monday, 3 April 2023',
    temperature: '15\u2103',
    weatherType: 'Cloudy',
    iconUrl: 'assets/cloudy.svg',
    wind: 5,
    rain: 15,
    humidity: 61,
  ),
  WeatherLocation(
    city: 'Islamabad',
    dateTime: '02:22 PM - Monday, 3 April 2023',
    temperature: '15\u2103',
    weatherType: 'Rainy',
    iconUrl: 'assets/rain.svg',
    wind: 28,
    rain: 78,
    humidity: 91,
  )
];
