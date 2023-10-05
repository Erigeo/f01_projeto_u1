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
          health: Colors.green, // Valor padrão para a saúde
          age: 0, // Valor padrão para a idade
          dietType: "", // Valor padrão para o tipo de dieta
          feedingTimes: [], // Valor padrão para os horários de alimentação
          veterinaryVisits: [], // Valor padrão para as visitas veterinárias
          width: 0.0, // Valor padrão para a largura
          length: 0.0, // Valor padrão para o comprimento
          breedPurityCertificate:
              false, // Valor padrão para o certificado de pureza da raça
          cio: false, // Valor padrão para o cio
          custo: 0.0, // Valor padrão para o custo
          vaccinations: [], // Valor padrão para as vacinações
          vaccinationDates: [], // Valor padrão para as datas de vacinação
          medicalTreatments: [], // Valor padrão para os tratamentos médicos
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
          health: Colors.green, // Valor padrão para a saúde
          age: 0, // Valor padrão para a idade
          dietType: "", // Valor padrão para o tipo de dieta
          feedingTimes: [], // Valor padrão para os horários de alimentação
          veterinaryVisits: [], // Valor padrão para as visitas veterinárias
          width: 0.0, // Valor padrão para a largura
          length: 0.0, // Valor padrão para o comprimento
          breedPurityCertificate:
              false, // Valor padrão para o certificado de pureza da raça
          cio: false, // Valor padrão para o cio
          custo: 0.0, // Valor padrão para o custo
          vaccinations: [], // Valor padrão para as vacinações
          vaccinationDates: [], // Valor padrão para as datas de vacinação
          medicalTreatments: [], // Valor padrão para os tratamentos médicos
        );
}
