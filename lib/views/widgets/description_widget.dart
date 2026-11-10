import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/cruise_booking_viewmodel.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Consumer<CruiseBookingViewModel>(
        builder: (context, viewModel, child) => Text(
          viewModel.description,
          softWrap: true,
          style: const TextStyle(height: 1.5),
        ),
      ),
    );
  }
}
