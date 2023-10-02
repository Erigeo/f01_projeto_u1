// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:f01_projeto_u1/models/Place.dart';

class LocationProvider {
  List<Place> places = [];

  // Método para adicionar um novo local
  void addLocation(Place place) {
    places.add(place);
  }

  // Método para obter a lista de locais cadastrados
  List<Place> getLocations() {
    return places;
  }

  void removeLocation(Place place) {
    places.remove(place);
  }

  bool isEmpty() {
    return places.isEmpty;
  }

  int length() {
    return places.length;
  }

  List<Place> getList() {
    return places;
  }

  /*Place getPlaceByIndex(int index) {
    return places[index];
  }*/
}
