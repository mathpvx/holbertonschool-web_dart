double calculateArea(double height, double base) {
  double area = 0.5 * height * base;
  // round to 2 decimal places
  return double.parse(area.toStringAsFixed(2));
}
