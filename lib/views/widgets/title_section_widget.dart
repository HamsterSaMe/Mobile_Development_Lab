import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/cruise_booking_viewmodel.dart';

class TitleSectionWidget extends StatelessWidget {
  const TitleSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Consumer<CruiseBookingViewModel>(
                  builder: (context, viewModel, child) => Text(
                    viewModel.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Sibu, Sarawak',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Consumer<CruiseBookingViewModel>(
            builder: (context, viewModel, child) => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.star, color: Colors.red),
                  onPressed: () {
                    viewModel.incrementStarRating();
                  },
                ),
                Text(
                  '${viewModel.starRatingCount}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
