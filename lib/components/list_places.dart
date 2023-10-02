import 'package:f01_projeto_u1/models/location_provider.dart';
import 'package:f01_projeto_u1/models/Place.dart';
import 'package:flutter/material.dart';

class ListPlaces extends StatelessWidget {
  final LocationProvider myPlaces;
  final String currentRoute;

  const ListPlaces(this.myPlaces, this.currentRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: myPlaces.length(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  if (currentRoute == '/insert_animal') {
                    Navigator.pushNamed(context, '/register_animal',
                        arguments: myPlaces.getList()[index]);
                  }
                  if (currentRoute == '/view_places') {
                    Navigator.pushNamed(context, '/inside_place',
                        arguments: myPlaces.getList()[index]);
                  }
                },
                child: CardItem(index: index, place: myPlaces.getList()[index]),
              ),
            ),
          ),
          /*Container(
            height: myPlaces.length() *
                60.0, // Define uma altura com base no número de itens
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: myPlaces.length(),
              itemBuilder: (ctx, index) => ListTile(
                title: Text("List $index"),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final int index;
  final Place place;

  CardItem({required this.index, required this.place});

  @override
  Widget build(BuildContext context) {
    String imagePath = place.imageUrl;

    return Container(
      height: 150,
      width: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Define o raio das bordas
        color: Color(0xFFEDEDED), // Define a cor de fundo
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 100,
            width: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            place.name,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final int index;

  ListItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("List $index"),
    );
  }
}
