import 'package:flutter/material.dart';

class LayoutCalculator {
  LayoutCalculator._(); // Prevent instantiation with private constructor.

  static LayoutBreakpoint breakpoint({required BuildContext context}) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 1440.0) {
      return LayoutBreakpoint.smallest;
    } else {
      return LayoutBreakpoint.large;
    }
  }

  static double margin({required BuildContext context}) {
    // final screenWidth = MediaQuery.of(context).size.width;

    switch (breakpoint(context: context)) {
      case LayoutBreakpoint.smallest:
        return 16.0;
      case LayoutBreakpoint.large:
        return 200.0;
    }
  }

  static double appBarHorizontalMargin({required BuildContext context}) {
    return margin(context: context).clamp(16.0, 32.0);
  }

  static double appBarVerticalMargin({required BuildContext context}) {
    return 12.0;
  }
}

// The relative size of the app window wrt to the width of the app window.
enum LayoutBreakpoint {
  smallest, // Approx. width of Phone.
  large, // Approx. width of Laptop.
}