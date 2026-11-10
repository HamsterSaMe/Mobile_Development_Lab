import 'package:flutter/material.dart';
import '../models/cruise_destination.dart';

class CruiseBookingViewModel extends ChangeNotifier {
  final CruiseDestination _destination = CruiseDestination(
    name: 'Rajang River',
    description: 'The Rajang River is the longest river in Malaysia, providing an essential lifeline for central Sarawak. A cruise along this majestic river offers an unforgettable experience, revealing the rich cultural heritage of the indigenous communities, lush tropical rainforests, and stunning sunset views. It is a premier eco-tourism destination perfect for nature lovers and adventurers.',
    selectedCruisePackage: 'Private River Cruise',
    starRatingCount: 41,
  );

  bool _isDarkMode = false;

  String get name => _destination.name;
  String get description => _destination.description;
  DateTime? get selectedVisitDate => _destination.selectedVisitDate;
  String? get selectedCruisePackage => _destination.selectedCruisePackage;
  int get starRatingCount => _destination.starRatingCount;
  bool get isDarkMode => _isDarkMode;

  final List<String> availablePackages = [
    'Private River Cruise',
    'Sunset Cruise',
    'Sunrise Cruise',
    'Rural Cruise',
    'SMI Park Cruise'
  ];

  void incrementStarRating() {
    _destination.starRatingCount++;
    notifyListeners();
  }

  void updateVisitDate(DateTime date) {
    _destination.selectedVisitDate = date;
    notifyListeners();
  }

  void updateCruisePackage(String package) {
    _destination.selectedCruisePackage = package;
    notifyListeners();
  }

  void toggleTheme(bool isDark) {
    _isDarkMode = isDark;
    notifyListeners();
  }
}
