import 'package:flutter/material.dart';
import 'package:minimart/util/constants/colors.dart';

class HomeProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String color;
  final double price;

  const HomeProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.color,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.0, // Ensures the image is square
            child: SizedBox(
              width: 162,
              height: 162,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5.17),
          SizedBox(
            width: double.infinity,
            height: 36,
            child: Text(
              '$title|$color',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.0,
                letterSpacing: 0.0,
              ),
            ),
          ),
          SizedBox(height: 5.17),
          SizedBox(
            height: 21,
            width: double.infinity,
            child: Text(
              '\$${price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.w700,
                height: 1.0,
                letterSpacing: 0.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
