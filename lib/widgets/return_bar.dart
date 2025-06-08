import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class ReturnBar extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const ReturnBar({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        border: const Border(
          bottom: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              HugeIcon, 
              size: 24.0, 
              color: Colors.white
            ),
            onPressed: onPressed ?? () => Navigator.of(context).pop(),
          ),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
            ),
          ),
          const SizedBox(width: 16.0), // Add some spacing on the right 
        ]
      ),
    );
  }
}
