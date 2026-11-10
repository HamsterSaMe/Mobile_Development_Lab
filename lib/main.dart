import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/cruise_booking_viewmodel.dart';
import 'views/cruise_booking_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CruiseBookingViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CruiseBookingViewModel>(
      builder: (context, viewModel, child) {
        return MaterialApp(
          title: 'Rajang River Cruise App',
          theme: ThemeData.light(useMaterial3: true),
          darkTheme: ThemeData.dark(useMaterial3: true),
          themeMode: viewModel.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: const CruiseBookingScreen(),
        );
      },
    );
  }
}
