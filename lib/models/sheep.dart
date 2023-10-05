import 'animal.dart';

class Sheep extends Animal {
  String status;
  String woolType;
  String woolColor;
  double milkTeeth;
  String hornType;
  double tailLength;
  String ramCompatibility;
  double woolDensity;
  String teatCondition;

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
    int age,
    String dietType,
    List<DateTime> feedingTimes,
    List<DateTime> veterinaryVisits,
    double width,
    double length,
    bool breedPurityCertificate,
    bool cio,
    double custo,
    List<String> vaccinations,
    List<DateTime> vaccinationDates,
    List<String> medicalTreatments,
    this.status,
    this.hornType,
    this.milkTeeth,
    this.ramCompatibility,
    this.tailLength,
    this.teatCondition,
    this.woolColor,
    this.woolDensity,
    this.woolType,
  ) : super(
          serialNumber: serialNumber,
          name: name,
          register: register,
          breed: breed,
          blood: blood,
          origin: origin,
          sex: sex,
          weight: weight,
          birthDate: birthDate,
          originalPrice: originalPrice,
          marketPrice: marketPrice,
          age: 0,
          dietType: "",
          feedingTimes: [],
          veterinaryVisits: [],
          width: 0.0,
          length: 0.0,
          breedPurityCertificate: false,
          cio: false,
          custo: 0.0,
          vaccinations: [],
          vaccinationDates: [],
          medicalTreatments: [],
        );

  Sheep.initialize()
      : status = "Healthy",
        hornType = "curved",
        milkTeeth = 8,
        ramCompatibility = "test",
        tailLength = 0.55,
        woolColor = "Brown",
        woolDensity = 0.22,
        woolType = "Smooth",
        teatCondition = "good",
        super(
          serialNumber: "12345",
          name: "Bessie",
          register: "R123",
          breed: "Holstein",
          blood: "A",
          origin: "USA",
          sex: "Female",
          weight: 500.0,
          birthDate: "01/03/2020",
          originalPrice: 1000.0,
          marketPrice: 800.0,
          age: 0,
          dietType: "",
          feedingTimes: [],
          veterinaryVisits: [],
          width: 0.0,
          length: 0.0,
          breedPurityCertificate: false,
          cio: false,
          custo: 0.0,
          vaccinations: [],
          vaccinationDates: [],
          medicalTreatments: [],
        );
}
