import 'package:adopt_app/models/pet.dart';
import 'package:flutter/material.dart';

import '../services/pet_services.dart';

class PetsProvider extends ChangeNotifier {
  Future getpets() async {
    pets = await PetServices().getPets();
    notifyListeners();
  }

  List<Pet> pets = [
    Pet(
        name: "Lucifurr",
        image: "https://i.ibb.co/P6VJ4pZ/smile-cat-1.png",
        age: 2,
        gender: "male")
  ];
}
