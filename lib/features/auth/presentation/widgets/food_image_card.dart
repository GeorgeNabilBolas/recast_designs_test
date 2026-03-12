import 'package:flutter/material.dart';
import '../../../../core/utils/responsive/responsive.dart';
import '../../data/models/food_image.dart';

class FoodImageCard extends StatelessWidget {
  const FoodImageCard({
    super.key,
    required this.foodImage,
    this.width = 90,
    this.height = 121,
  });

  final FoodImage foodImage;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final responsiveWidth = context.w(width);
    final responsiveHeight = context.h(height);
    final pixelRatio = MediaQuery.devicePixelRatioOf(context);
    final cacheW = (responsiveWidth * pixelRatio).toInt();
    final cacheH = (responsiveHeight * pixelRatio).toInt();

    return Container(
      width: responsiveWidth,
      height: responsiveHeight,
      margin: EdgeInsets.symmetric(horizontal: context.w(4.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(context.w(7)),
        child: Image.asset(
          foodImage.imageUrl,
          fit: BoxFit.cover,
          width: responsiveWidth,
          height: responsiveHeight,
          cacheWidth: cacheW,
          cacheHeight: cacheH,
        ),
      ),
    );
  }
}
