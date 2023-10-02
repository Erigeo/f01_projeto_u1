// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:f01_projeto_u1/models/Place.dart';
import 'package:flutter/material.dart';

class LocationProvider extends ChangeNotifier {
  List<Place> places = [];

  // Método para adicionar um novo local
  void addLocation(Place place) {
    places.add(place);
    notifyListeners();
  }

  // Método para obter a lista de locais cadastrados
  List<Place> getLocations() {
    return places;
  }

  void removeLocation(Place place) {
    places.remove(place);
    notifyListeners();
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
