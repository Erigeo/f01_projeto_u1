import 'package:f01_projeto_u1/models/cow.dart';
import 'package:flutter/material.dart';

class CowDetailsScreen extends StatelessWidget {
  const CowDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Cow cow = ModalRoute.of(context)!.settings.arguments as Cow;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Vaca'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Serial Number: ${cow.serialNumber}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Name: ${cow.name}'),
            Text('Register: ${cow.register}'),
            Text('Breed: ${cow.breed}'),
            Text('Blood: ${cow.blood}'),
            Text('Origin: ${cow.origin}'),
            Text('Sex: ${cow.sex}'),
            Text('Weight: ${cow.weight.toString()} kg'),
            Text('Birth Date: ${cow.birthDate}'),
            Text('Original Price: \$${cow.originalPrice.toStringAsFixed(2)}'),
            Text('Market Price: \$${cow.marketPrice.toStringAsFixed(2)}'),
            Text('Status: ${(cow as Cow).status}'),
          ],
        ),
      ),
    );
  }
}