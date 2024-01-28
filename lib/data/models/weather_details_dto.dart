class WeatherDetailsDTO {
  final num id;
  final String main;
  final String description;
  final String icon;

  WeatherDetailsDTO({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory WeatherDetailsDTO.fromJson(Map<String, dynamic> json) {
    return WeatherDetailsDTO(
      id: json['id'] as num,
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );
  }
}
