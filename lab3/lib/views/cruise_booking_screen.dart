import 'package:flutter/material.dart';
import 'widgets/header_image_widget.dart';
import 'widgets/title_section_widget.dart';
import 'widgets/action_bar_widget.dart';
import 'widgets/description_widget.dart';
import 'widgets/booking_controls_widget.dart';

class CruiseBookingScreen extends StatelessWidget {
  const CruiseBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rajang River Cruise'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return ListView(
              children: const [
                HeaderImageWidget(),
                TitleSectionWidget(),
                ActionBarWidget(),
                DescriptionWidget(),
                BookingControlsWidget(),
              ],
            );
          } else {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 1,
                  child: HeaderImageWidget(),
                ),
                Expanded(
                  flex: 2,
                  child: ListView(
                    children: const [
                      TitleSectionWidget(),
                      ActionBarWidget(),
                      DescriptionWidget(),
                      BookingControlsWidget(),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
