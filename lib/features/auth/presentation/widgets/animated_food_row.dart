import 'package:flutter/material.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/utils/responsive/responsive.dart';
import '../../data/models/food_image.dart';
import 'food_image_card.dart';

class AnimatedFoodRow extends StatefulWidget {
  const AnimatedFoodRow({
    super.key,
    required this.images,
    required this.scrollRight,
    this.durationForCycle = 20,
  });

  final List<FoodImage> images;
  final bool scrollRight;
  final int durationForCycle;

  @override
  State<AnimatedFoodRow> createState() => _AnimatedFoodRowState();
}

class _AnimatedFoodRowState extends State<AnimatedFoodRow> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.durationForCycle),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double itemWidth =
        context.w(AppDimensions.foodCardWidth) +
        context.w(AppDimensions.spacingMd); // card width + horizontal margin
    final listWidth = widget.images.length * itemWidth;

    return SizedBox(
      height: context.h(AppDimensions.foodCardHeight) + context.h(AppDimensions.spacingMd),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          double offset = _controller.value * listWidth;

          if (widget.scrollRight) {
            offset = -listWidth + offset;
          } else {
            offset = -offset;
          }

          return Transform.translate(
            offset: Offset(offset, 0),
            child: child,
          );
        },
        child: OverflowBox(
          maxWidth: double.infinity,
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              ...widget.images.map((img) => FoodImageCard(foodImage: img)),
              ...widget.images.map((img) => FoodImageCard(foodImage: img)),
            ],
          ),
        ),
      ),
    );
  }
}
