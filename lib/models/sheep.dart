import 'animal.dart';

class Sheep extends Animal {
  String status;
  String woolType;
  String woolColor;
  double milkTeeth;
  String hornType;
  double tailLength;
  String
      ramCompatibility; //para indicar a compatibilidade da ovelha com diferentes carneiros para fins de acasalamento.//
  double woolDensity;
  String teatCondition;
  //datetime sheatingSchedule

  Sheep(
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
      this.hornType,
      this.milkTeeth,
      this.ramCompatibility,
      this.tailLength,
      this.teatCondition,
      this.woolColor,
      this.woolDensity,
      this.woolType)
      : super(
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

  Sheep.initialize()
      : status = "Healthy",
        hornType = "curvado",
        milkTeeth = 8,
        ramCompatibility = "teste",
        tailLength = 0.55,
        woolColor = "Browm",
        woolDensity = 0.22,
        woolType = "Liso",
        teatCondition = "good",
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
