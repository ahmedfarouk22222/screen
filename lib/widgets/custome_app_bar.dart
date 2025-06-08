import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Right side (Icon + "العراق")

          // Left side (Search + Notification)
          Row(
            children: [
              Icon(Icons.search, color: Colors.black),
              SizedBox(width: 12),
              Icon(Icons.notifications_none, color: Colors.black),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.fingerprint,
                color: Colors.blue,
              ), // ممكن تحط صورة مكانها
              SizedBox(width: 8),
              Text(
                'العراق',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
