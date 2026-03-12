import 'package:flutter/widgets.dart';
import 'package:recast_designs_test/core/constants/app_dimensions.dart';

extension ResponsiveContext on BuildContext {
  double w(num designWidthValue) {
    final double screenWidth = MediaQuery.sizeOf(this).width;
    return (designWidthValue / AppDimensions.designWidth) * screenWidth;
  }

  double h(num designHeightValue) {
    final double screenHeight = MediaQuery.sizeOf(this).height;
    return (designHeightValue / AppDimensions.designHeight) * screenHeight;
  }
}
