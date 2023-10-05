class Animal {
  String serialNumber;
  String name;
  String register;
  String breed;
  String blood;
  String origin;
  String sex;
  double weight;
  String birthDate;
  double originalPrice;
  double marketPrice;
  int age;
  String dietType;
  List<DateTime> feedingTimes;
  List<DateTime> veterinaryVisits;
  double width;
  double length;
  bool breedPurityCertificate;
  bool cio;
  double custo;
  List<String> vaccinations;
  List<DateTime> vaccinationDates;
  List<String> medicalTreatments;

  Animal({
    this.serialNumber = "",
    this.name = "",
    this.register = "",
    this.breed = "",
    this.blood = "",
    this.origin = "",
    this.sex = "",
    this.weight = 0.0,
    this.birthDate = "",
    this.originalPrice = 0.0,
    this.marketPrice = 0.0,
    this.age = 0,
    this.dietType = "",
    this.feedingTimes = const [],
    this.veterinaryVisits = const [],
    this.width = 0.0,
    this.length = 0.0,
    this.breedPurityCertificate = false,
    this.cio = false,
    this.custo = 0.0,
    this.vaccinations = const [],
    this.vaccinationDates = const [],
    this.medicalTreatments = const [],
  });
}
