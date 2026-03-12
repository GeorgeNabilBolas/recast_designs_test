import 'package:flutter/material.dart';

import '../../data/seed/food_image_seed_data.dart';
import '../widgets/animated_food_row.dart';

class AnimatedFoodSection extends StatelessWidget {
  const AnimatedFoodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedFoodRow(
          images: foodImageSeedRow1,
          scrollRight: true,
        ),
        AnimatedFoodRow(
          images: foodImageSeedRow2,
          scrollRight: false,
        ),
      ],
    );
  }
}
