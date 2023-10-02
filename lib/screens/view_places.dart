import 'package:f01_projeto_u1/models/location_provider.dart';
import 'package:f01_projeto_u1/components/list_places.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewPlaces extends StatelessWidget {
  const ViewPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    // Recupere os argumentos passados da tela anterior
    //final myPlaces =
    ModalRoute.of(context)!.settings.arguments as LocationProvider;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lotes e Espaços'),
      ),
      body: Center(
        child: Consumer<LocationProvider>(
          builder: (context, locationProvider, child) {
            return ListPlaces(
              locationProvider,
              ModalRoute.of(context)!.settings.name as String,
            );
          },
        ),
      ),
    );
  }
}
