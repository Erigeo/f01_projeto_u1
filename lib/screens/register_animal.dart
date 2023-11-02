import 'package:f01_projeto_u1/models/Place.dart';
import 'package:f01_projeto_u1/models/animal.dart';
import 'package:f01_projeto_u1/models/cow.dart';
import 'package:flutter/material.dart';

class RegisterAnimal extends StatefulWidget {
  const RegisterAnimal({super.key});

  @override
  _RegisterAnimalState createState() => _RegisterAnimalState();
}

class _RegisterAnimalState extends State<RegisterAnimal> {
  final formKey = GlobalKey<FormState>();

  List<String> items = ['Indefinido', 'Puro', 'Mestiço'];
  List<String> breeds = [
    'SRD',
    'Holandês',
    'Angus',
    'Hereford',
    'Charolês',
    'Brahman'
  ];
  List<String> origin = ['Local', 'Importado', 'Nacional'];
  List<String> sex = ['Macho', 'Fêmea'];

  String selectedValueBlood = 'Indefinido';
  String selectedBreed = 'SRD';
  String selectedOrigin = 'Local';
  String selectedSex = 'Macho';

  Animal animal1 = Cow.initialize();

  @override
  Widget build(BuildContext context) {
    Place place = ModalRoute.of(context)!.settings.arguments as Place;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Registre seu Animal'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 15,
                  ),
                  Text("Inserindo em: ${place.name}"),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null; // Return null for no validation error
                    },
                    onSaved: (value) {
                      animal1.serialNumber = value!;
                    },
                    //setar os atributos
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFEDEDED),
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: 'Número de brinco',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 16.0), // Ajuste o espaçamento interno
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null; // Return null for no validation error
                    },
                    onSaved: (value) {
                      animal1.register = value!;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFEDEDED),
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: 'Registro',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 16.0), // Ajuste o espaçamento interno
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null; // Return null for no validation error
                    },
                    onSaved: (value) {
                      animal1.name = value!;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFEDEDED),
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: 'Nome',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 16.0), // Ajuste o espaçamento interno
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null; // Return null for no validation error
                    },
                    onSaved: (value) {
                      animal1.weight = double.parse(value!);
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFEDEDED),
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: 'Peso',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 16.0), // Ajuste o espaçamento interno
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null; // Return null for no validation error
                    },
                    onSaved: (value) {
                      animal1.marketPrice = double.parse(value!);
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFEDEDED),
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: 'Valor de mercado',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 16.0), // Ajuste o espaçamento interno
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null; // Return null for no validation error
                    },
                    onSaved: (value) {
                      animal1.birthDate = value!;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFEDEDED),
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: 'Nascimento',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 16.0), // Ajuste o espaçamento interno
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DropdownButtonFormField<String>(
                    value: selectedValueBlood,
                    items: items.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedValueBlood = newValue!;
                      });
                    },
                    onSaved: (value) {
                      animal1.blood = selectedValueBlood;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Tipo Sanguíneo',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DropdownButtonFormField<String>(
                    value: selectedBreed,
                    items: breeds.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedBreed = newValue!;
                      });
                    },
                    onSaved: (value) {
                      animal1.breed = selectedBreed;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Raça',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DropdownButtonFormField<String>(
                    value: selectedSex,
                    items: sex.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedSex = newValue!;
                      });
                    },
                    onSaved: (value) {
                      animal1.sex = selectedSex;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Tipo Sanguíneo',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DropdownButtonFormField<String>(
                    value: selectedOrigin,
                    items: origin.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedOrigin = newValue!;
                      });
                    },
                    onSaved: (value) {
                      animal1.origin = selectedOrigin;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Defina a origem',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final isValid = formKey.currentState!.validate();
                      if (isValid) {
                        // Form is valid, you can save data here
                        formKey.currentState!.save();

                        // Add the newCow to place
                        place.addAnimal(animal1);

                      }
                    },
                    child: const Text('Registrar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
