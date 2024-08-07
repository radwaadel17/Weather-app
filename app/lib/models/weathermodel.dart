class weathermodel {
  final String city;
  final String last_update;
  final String avg_temp;
  final String condition;
  final String mx_temp;
  final String mn_temp;
  const weathermodel(
      {required this.city,
      required this.last_update,
      required this.avg_temp,
      required this.condition,
      required this.mn_temp,
      required this.mx_temp});
}
