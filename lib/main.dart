import 'package:f01_projeto_u1/models/location_provider.dart';
import 'package:f01_projeto_u1/components/list_places.dart';
import 'package:f01_projeto_u1/screens/cow_details.dart';
import 'package:f01_projeto_u1/screens/insert_animal.dart';
import 'package:f01_projeto_u1/screens/inside_place.dart';
import 'package:f01_projeto_u1/screens/register_animal.dart';
import 'package:f01_projeto_u1/screens/register_place.dart';
import 'package:f01_projeto_u1/screens/view_places.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => LocationProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fazendinha',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomePage(title: 'Fazendinha Home Page'),
          '/register_animal': (context) => const RegisterAnimal(),
          '/insert_animal': (context) => const InsertAnimal(),
          '/register_place': (context) => const RegisterPlace(),
          '/inside_place': (context) => const InsidePlace(),
          '/view_places': (context) => const ViewPlaces(),
          '/cow_details': (context) => const CowDetailsScreen(),
        }
        //home: const MyHomePage(title: 'Fazendinha Home Page'),
        );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _openBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.house),
                title: const Text('Adicionar local'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/register_place',
                      arguments: myPlaces);
                },
              ),
              ListTile(
                leading: const Icon(Icons.add),
                title: const Text('Adicionar animal'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/insert_animal',
                      arguments: myPlaces);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  late LocationProvider myPlaces;

  _MyHomePageState() {
    myPlaces = LocationProvider();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 146, 132),
        title: Text(widget.title),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Image.asset(
            'lib/assets/farm.png',
            width: 40,
            height: 40,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centralizar verticalmente
          children: [
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: Text(
                "Bem-vindo(a) à sua fazenda!",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Consumer<LocationProvider>(
                builder: (context, locationProvider, child) {
                  return ListPlaces(
                    locationProvider,
                    ModalRoute.of(context)!.settings.name as String,
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 70.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[],
                ),
              ),
            ),
            //ListPlaces(myPlaces, ModalRoute.of(context)!.settings.name as String),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/view_places',
                      arguments: myPlaces);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blue), // Cor de fundo
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.white), // Cor do texto
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Bordas arredondadas
                    ),
                  ),
                ),
                child: const Text('Visualizar lotes e espaços'),
              ),
            ),
            const SizedBox(height: 40.0), // Espaçamento vertical entre botões
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.all(40.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.circular(20.0), // Bordas arredondadas
                    ),
                    child: const Center(
                      child: Text(
                        'Saúde',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.all(40.0),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius:
                          BorderRadius.circular(20.0), // Bordas arredondadas
                    ),
                    child: const Center(
                      child: Text(
                        'Finanças',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 16.0), // Margem inferior desejada
        child: FloatingActionButton(
          onPressed: () {
            _openBottomSheet();
          },
          tooltip: 'Open Modal',
          backgroundColor: Colors.blue, // Cor de fundo
          foregroundColor: Colors.white,
          child: const Icon(Icons.add), // Cor do ícone
        ),
      ),

      // Set the position of the floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
