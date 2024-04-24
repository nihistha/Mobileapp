class AreaCircleModel{
  final double? radius;

  AreaCircleModel({
    required this.radius,
  });

  double area(){
    return radius! * radius!* 3.1415;
  }
}