import 'animal.dart';

class Chicken extends Animal {
  String status;

  Chicken(
    String serialNumber,
    String name,
    String register,
    String breed,
    String blood,
    String origin,
    String sex,
    double weight,
    String birthDate,
    double originalPrice,
    double marketPrice,
    this.status,
  ) : super(
          serialNumber,
          name,
          register,
          breed,
          blood,
          origin,
          sex,
          weight,
          birthDate,
          originalPrice,
          marketPrice,
        );

  Chicken.initialize()
      : status = "Healthy",
        super(
          "12345",
          "Bessie",
          "R123",
          "Holstein",
          "A",
          "USA",
          "Female",
          500.0,
          "01/03/2020",
          1000.0,
          800.0,
        );
}
