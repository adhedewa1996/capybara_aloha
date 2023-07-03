import 'package:flutter/material.dart';

import '../constants.dart';
import '../design_token/index.dart';
import 'images.dart';

mixin Appbars {
  static Widget simple({
    Color backgroundColor = Colors.grey,
    BoxFit boxfitImage = BoxFit.fitWidth,
    required Widget child,
    required IconData rightIcon,
    required Color rightIconColor,
    required IconData leftIcon,
    required Color leftIconColor,
  }) {
    return AspectRatio(
      aspectRatio: 6 / 1,
      child: Container(
        padding: const EdgeInsets.all(CapybaraPadding.small),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(CapybaraPadding.small),
              child: Icon(leftIcon, color: leftIconColor),
            ),
            child,
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(CapybaraPadding.small),
              child: Icon(rightIcon, color: rightIconColor),
            ),
          ],
        ),
      ),
    );
  }

  static Widget withImageAndIcon({
    Color backgroundColor = Colors.grey,
    BoxFit boxfitImage = BoxFit.fitWidth,
    required String urlImage,
    required String urlImagePlaceholder,
    CapybaraImageUrlType imageType = CapybaraImageUrlType.network,
    CapybaraImagePlaceholderType placeholderType = CapybaraImagePlaceholderType.network,
    required IconData rightIcon,
    required Color rightIconColor,
  }) {
    return AspectRatio(
      aspectRatio: 6 / 1,
      child: Container(
        padding: const EdgeInsets.all(CapybaraPadding.small),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CapybaraImage(
              imageType: imageType,
              placeholderType: placeholderType,
              url: urlImage,
              imagePlaceholder: urlImagePlaceholder,
              fit: boxfitImage,
              height: 100,
              width: 100,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(CapybaraPadding.small),
              child: Icon(rightIcon, color: rightIconColor),
            )
          ],
        ),
      ),
    );
  }
}
