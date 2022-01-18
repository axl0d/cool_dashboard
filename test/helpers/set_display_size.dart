import 'package:cool_dashboard/layout/layout.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

extension DashboardWidgetTester on WidgetTester {
  void setDisplaySize(Size size) {
    binding.window.physicalSizeTestValue = size;
    binding.window.devicePixelRatioTestValue = 1.0;
    addTearDown(() {
      binding.window.clearPhysicalSizeTestValue();
      binding.window.clearDevicePixelRatioTestValue();
    });
  }

  void setLargeDisplaySize() {
    setDisplaySize(const Size(DashboardBreakpoints.large, 1000));
  }

  void setMediumDisplaySize() {
    setDisplaySize(const Size(DashboardBreakpoints.medium, 1000));
  }

  void setSmallDisplaySize() {
    setDisplaySize(const Size(DashboardBreakpoints.small, 1000));
  }
}
