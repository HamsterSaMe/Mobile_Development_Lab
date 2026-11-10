import 'package:flutter/material.dart';

class ActionBarWidget extends StatelessWidget {
  const ActionBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(context, Theme.of(context).primaryColor, Icons.call, 'CALL'),
        _buildButtonColumn(context, Theme.of(context).primaryColor, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(context, Theme.of(context).primaryColor, Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _buildButtonColumn(BuildContext context, Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }
}
