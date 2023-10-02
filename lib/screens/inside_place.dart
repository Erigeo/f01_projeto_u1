import 'package:f01_projeto_u1/models/Place.dart';
import 'package:f01_projeto_u1/models/cow.dart';
import 'package:flutter/material.dart';

class InsidePlace extends StatefulWidget {
  InsidePlace({Key? key}) : super(key: key);

  @override
  _InsidePlaceState createState() => _InsidePlaceState();
}

class _InsidePlaceState extends State<InsidePlace> {
  @override
  Widget build(BuildContext context) {
    Place place = ModalRoute.of(context)!.settings.arguments as Place;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Animais no ${place.name}'),
      ),
      body: ListView.separated(
        itemCount: place.getAnimalList().length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(); // Adiciona um divisor entre os elementos da lista
        },
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(place
                .getAnimalList()[index]
                .name), // Use uma chave única para cada item
            onDismissed: (direction) {
              setState(() {
                place.removeAnimal(
                    index); // Substitua pelo método de remoção adequado
              });
            },
            background: Container(
              color: Colors.red, // Cor de fundo ao deslizar
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                if (place.getAnimalList()[index] is Cow) {
                  Navigator.pushNamed(context, '/cow_details',
                      arguments: place.getAnimalList()[index]);
                }
              },
              child: CustomListTile(
                title: Text(place.getAnimalList()[index].name),
              ),
            ),
          );
        },
      ),
    );
  }
}


class CustomListTile extends StatelessWidget {
  final Widget title;

  CustomListTile({required this.title});

  @override
  Widget build(BuildContext context) {
    // Defina a cor da bolinha aqui (por exemplo, sempre verde)
    Color ballColor = Colors.green;



    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: title,
              ),
            ),
            Container(
              width: 16, // Largura da bolinha
              height: 16, // Altura da bolinha
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ballColor, // Cor da bolinha
              ),
            ),
          ],
        ),
      ),
    );
  }
}
