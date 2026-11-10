import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/cruise_booking_viewmodel.dart';

class BookingControlsWidget extends StatelessWidget {
  const BookingControlsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CruiseBookingViewModel>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Booking Preferences',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Visit Date'),
            subtitle: Text(
              viewModel.selectedVisitDate != null
                  ? "${viewModel.selectedVisitDate!.toLocal()}".split(' ')[0]
                  : "Select a date",
            ),
            onTap: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: viewModel.selectedVisitDate ?? DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2101),
              );
              if (picked != null && picked != viewModel.selectedVisitDate) {
                viewModel.updateVisitDate(picked);
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.directions_boat),
            title: const Text('Cruise Package'),
            trailing: DropdownButton<String>(
              value: viewModel.selectedCruisePackage,
              underline: Container(), // removes the default underline
              onChanged: (String? newValue) {
                if (newValue != null) {
                  viewModel.updateCruisePackage(newValue);
                }
              },
              items: viewModel.availablePackages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.brightness_6),
            title: const Text('Dark Mode'),
            trailing: Switch(
              value: viewModel.isDarkMode,
              onChanged: (bool value) {
                viewModel.toggleTheme(value);
              },
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
