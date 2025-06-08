import 'package:flutter/material.dart';
import 'package:minimart/widgets/mobile_header.dart';
import 'package:minimart/widgets/return_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header section
            const MobileHeader(showSearch: true),
            ReturnBar(
              title: 'Home',
              onPressed: () => Navigator.of(context).pop(),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(height: 100, color: Colors.amber),
                  // Main content section
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Featured Products',
                          //style: Theme.of(context).textTheme.headline5,
                        ),
                        const SizedBox(height: 16.0),
                        // Here you can add a list of featured products or any other content
                        // For example, a GridView or ListView of products
                      ],
                    ),
                  ),
                  Container(color: Colors.amber),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
