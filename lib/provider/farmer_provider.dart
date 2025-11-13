import 'package:flutter/material.dart';


class FarmerProvider with ChangeNotifier {
  List<Map<String, dynamic>> _farmers = [];

  List<Map<String, dynamic>> get farmers => _farmers;

  void addFarmer(Map<String, dynamic> farmer) {
    _farmers.add(farmer);
    notifyListeners(); // triggers UI update
  }

  void removeFarmer(String id) {
    _farmers.removeWhere((farmer) => farmer['id'] == id);
    notifyListeners();
  }
}
