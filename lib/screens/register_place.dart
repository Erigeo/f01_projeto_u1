import 'package:f01_projeto_u1/models/Place.dart';
import 'package:f01_projeto_u1/models/location_provider.dart';
import 'package:flutter/material.dart';

class RegisterPlace extends StatefulWidget {
  @override
  _RegisterPlaceState createState() => _RegisterPlaceState();
}

class _RegisterPlaceState extends State<RegisterPlace> {
  final formKey = GlobalKey<FormState>();
  Place local = Place.initialize();

  //TODO PASSAR A LISTA

  @override
  Widget build(BuildContext context) {
    final myPlaces = ModalRoute.of(context)!.settings.arguments as LocationProvider;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Registre um Local'),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Campo obrigatório';
                    }
                    return null; // Return null for no validation error
                  },
                  onSaved: (value) {
                    local.name = value!;
                  },
                  //setar os atributos
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEDEDED),
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Registro',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 16.0), // Ajuste o espaçamento interno
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Campo obrigatório';
                    }
                    return null; // Return null for no validation error
                  },
                  onSaved: (newValue) {
                    //TODO local.imageUrl = newValue!;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEDEDED),
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'URL da Imagem',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 16.0), // Ajuste o espaçamento interno
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    final isValid = formKey.currentState!.validate();
                    if (isValid) {
                      // Form is valid, you can save data here
                      formKey.currentState!.save();
                      myPlaces.addLocation(local);
                    }
                  },
                  child: const Text('Criar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
