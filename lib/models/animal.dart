import 'package:flutter/material.dart';

class Animal {
  String serialNumber;
  String name;
  String register;
  String breed;
  String blood;
  String origin;
  String sex;
  double weight;
  String birthDate;
  double originalPrice;
  double marketPrice;
  Color health = Colors.green;
  Animal(
      this.serialNumber,
      this.name,
      this.register,
      this.breed,
      this.blood,
      this.origin,
      this.sex,
      this.weight,
      this.birthDate,
      this.originalPrice,
      this.marketPrice,
      [this.health = Colors.green]);

  // static Animal initialize() {}
  Animal.initialize()
      : serialNumber = "00",
        name = "Animal 1",
        register = "AB123",
        breed = "Original",
        blood = "Red",
        origin = "Pure",
        sex = "Female",
        weight = 100,
        birthDate = "01/01/1990",
        originalPrice = 100,
        marketPrice = 3000;
}
