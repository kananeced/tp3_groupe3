import 'package:flutter/cupertino.dart';

class Device {
  String name;
  String image;
  bool selected = false;
  Device({
    required this.name,
    required this.image,
  });
}

class Equipement {
  IconData? icon;
  bool selected = false;
  Equipement({required this.icon});
}
