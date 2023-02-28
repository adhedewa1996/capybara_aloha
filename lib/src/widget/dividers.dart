import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../design_token/padding.dart';

mixin Dividers {
  static Widget dash({
    Color color = Colors.grey,
    double height = 2,
    double marginVertical = CapybaraPadding.small,
    double marginHorizontal = CapybaraPadding.small,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: marginVertical,
        horizontal: marginHorizontal,
      ),
      child: Row(
        children: List.generate(
          150 ~/ 2,
          (index) => Expanded(
            child: Container(
              color: index.isOdd ? Colors.transparent : color,
              height: height,
            ),
          ),
        ),
      ),
    );
  }

  static Widget line({
    Color color = Colors.grey,
    double height = 2,
    double marginVertical = CapybaraPadding.small,
    double marginHorizontal = CapybaraPadding.small,
  }) {
    return Container(
      width: Get.width,
      height: height,
      color: color,
      margin: EdgeInsets.symmetric(
        vertical: marginVertical,
        horizontal: marginHorizontal,
      ),
    );
  }
}
