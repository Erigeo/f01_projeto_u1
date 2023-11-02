import 'package:f01_projeto_u1/models/location_provider.dart';
import 'package:f01_projeto_u1/components/list_places.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*class InsertAnimalScreen extends StatelessWidget {
  const InsertAnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fazendinha',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const MyHomePage(title: 'Fazendinha Home Page'),
    );
  }
}*/

class InsertAnimal extends StatelessWidget {
  const InsertAnimal({super.key});

  @override
  Widget build(BuildContext context) {
    // Recupere os argumentos passados da tela anterior
    final myPlaces =
        ModalRoute.of(context)!.settings.arguments as LocationProvider;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeiro passo'),
      ),
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Centralizar verticalmente
        children: [
          const Text('Clique no local onde deseja adicionar o animal'),
          Center(
            child: Consumer<LocationProvider>(
              builder: (context, locationProvider, child) {
                return ListPlaces(
                  locationProvider,
                  ModalRoute.of(context)!.settings.name as String,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
