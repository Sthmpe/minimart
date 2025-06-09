import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:minimart/util/constants/colors.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.productQuantity, 
    required this.productStatus, 
    required this.onDelete, 
    required this.onAdd, 
    required this.onMinus,
  });

  final String productImage;
  final String productName;
  final String productPrice;
  final String productStatus;
  final String productQuantity;
  final VoidCallback onDelete;
  final VoidCallback onAdd;
  final VoidCallback onMinus;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132, //#F6F5F8
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F5F8),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.93),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.65),
              child: Image.asset(
                productImage,
                width: 102.87,
                height: 106.15,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10), // Space between image and text
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                    child: Text(
                      productName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: MiniMartAppColors.grey700,
                        height: 20 / 12, // line-height ÷ font-size → 1.67
                        letterSpacing: 0.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                    child: Text(
                      productPrice,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        height: 32 / 17, // line-height ÷ font-size → 1.88
                        letterSpacing: 0.0,
                        color: MiniMartAppColors.grey700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                    child: Text(
                      productStatus,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis, 
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: MiniMartAppColors.success500,
                        height: 16 / 12, // line-height ÷ font-size → 1.33
                        letterSpacing: 0.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: onMinus,
                        child: Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                            color: MiniMartAppColors.grey200,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Center(
                            child: Icon(
                              HugeIcons.strokeRoundedMinusSign,
                              color: MiniMartAppColors.grey500,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Text(
                          productQuantity,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: MiniMartAppColors.grey700,
                            height: 20 / 12, // line-height ÷ font-size → 1.67
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      GestureDetector(
                        onTap: onAdd,
                        child: Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                            color: MiniMartAppColors.white,
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: MiniMartAppColors.grey200,
                              width: 1.0,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              HugeIcons.strokeRoundedAdd01,
                              color: MiniMartAppColors.grey700,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: onDelete,
                        child: Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                            color: MiniMartAppColors.white,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Center(
                            child: Icon(
                              HugeIcons.strokeRoundedDelete02,
                              color: MiniMartAppColors.grey700,
                              size: 20,
                            ),
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
