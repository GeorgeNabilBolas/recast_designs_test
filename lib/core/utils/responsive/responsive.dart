import 'package:flutter/widgets.dart';

extension ResponsiveContext on BuildContext {
  static const double _designWidth = 264.0;

  static const double _designHeight = 572.0;

  double w(num designWidthValue) {
    final double screenWidth = MediaQuery.sizeOf(this).width;
    return (designWidthValue / _designWidth) * screenWidth;
  }

  double h(num designHeightValue) {
    final double screenHeight = MediaQuery.sizeOf(this).height;
    return (designHeightValue / _designHeight) * screenHeight;
  }
}
