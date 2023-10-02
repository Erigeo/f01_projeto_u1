import 'package:f01_projeto_u1/models/animal.dart';

class Place {
  String id;
  String name;
  String imageUrl;
  List<Animal> animals = [];

  Place({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.animals,
  });

  // Construtor nomeado para inicialização

  void addAnimal(Animal animal) {
    animals.add(animal);
  }

  List<Animal> getAnimalList() {
    return animals;
  }

  void removeAnimal(int index) {
    animals.removeAt(index);
  }

  Place.initialize()
      : id = "00",
        name = "Chiqueiro",
        imageUrl = "lib/assets/pig.jpg";
}
