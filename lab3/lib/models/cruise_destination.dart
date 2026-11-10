class CruiseDestination {
  final String name;
  final String description;
  DateTime? selectedVisitDate;
  String? selectedCruisePackage;
  int starRatingCount;

  CruiseDestination({
    required this.name,
    required this.description,
    this.selectedVisitDate,
    this.selectedCruisePackage,
    this.starRatingCount = 0,
  });
}
