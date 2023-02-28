import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class CapybaraImage extends StatelessWidget {
  const CapybaraImage({
    required this.url,
    required this.imagePlaceholder,
    super.key,
    this.fit,
    this.height,
    this.width,
    this.imageType = CapybaraImageUrlType.network,
    this.placeholderType = CapybaraImagePlaceholderType.local,
    this.color = Colors.white,
  });
  final String url;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final CapybaraImageUrlType? imageType;
  final CapybaraImagePlaceholderType? placeholderType;
  final String? imagePlaceholder;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (imageType == CapybaraImageUrlType.network) {
      return Image.network(
        url,
        fit: fit ?? BoxFit.fill,
        width: width ?? Get.size.width,
        height: height ?? Get.size.height,
        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return placeholder();
        },
        errorBuilder: (context, error, stackTrace) {
          return placeholder();
        },
      );
    }
    return Image.asset(
      url,
      fit: fit ?? BoxFit.fill,
      width: width ?? Get.size.width,
      height: height ?? Get.size.height,
    );
  }

  Widget placeholder() {
    if (placeholderType == CapybaraImagePlaceholderType.network) {
      return Stack(
        children: [
          ColoredBox(
            color: color!,
          ),
          Center(
            child: Image.network(
              imagePlaceholder!,
              color: Colors.white,
              width: width ?? Get.size.width * .1,
              height: height ?? Get.size.width * .1,
            ),
          ),
        ],
      );
    }
    return Stack(
      children: [
        ColoredBox(
          color: color!,
        ),
        Center(
          child: Image.asset(
            imagePlaceholder!,
            color: Colors.white,
            width: width ?? Get.size.width * .1,
            height: height ?? Get.size.width * .1,
          ),
        ),
      ],
    );
  }
}
