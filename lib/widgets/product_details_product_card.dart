import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:minimart/bloc/favorite_cubit.dart';
import 'package:minimart/util/constants/image_strings.dart';

class ProductDetailsProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String color;
  final double price;

  const ProductDetailsProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.color,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FavoriteCubit(),
      child: Container(
        width: 334, // Increased size
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 1.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      imageUrl,
                      width: 334,
                      height: 331.6,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Heart Icon Button
                Positioned(
                  top: 11,
                  right: 14,
                  child: BlocBuilder<FavoriteCubit, bool>(
                    builder: (context, isFavorite) {
                      return GestureDetector(
                        onTap: () => context.read<FavoriteCubit>().toggleFavorite(),
                        child: Container(
                          width: 44,
                          height: 44,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              isFavorite
                                  ? MiniMartImages.hugeIconsFavourites
                                  : MiniMartImages.hugeIconsFavouritesBlack,
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.58),
            SizedBox(
              width: double.infinity,
              height: 22,
              child: Text(
                '$title | $color',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                  letterSpacing: 0.0,
                ),
              ),
            ),
            const SizedBox(height: 10.58),
            Text(
              '\$${price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 32.75,
                fontWeight: FontWeight.w700,
                height: 1.0,
                letterSpacing: 0.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
