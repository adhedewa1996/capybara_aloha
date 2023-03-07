import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../design_token/index.dart';

mixin Popups {
  static void callNewsUpdate({
    required List<Widget> items,
  }) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.horizontal,
        margin: EdgeInsets.only(
          bottom: Get.height - (Get.height * 0.2),
          right: Get.width * .1,
          left: Get.width * .1,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        content: newsUpdate(items: items),
      ),
    );
  }

  static Widget newsUpdate({
    required List<Widget> items,
    double overlap = 25,
  }) {
    List<Widget> stackLayers = List<Widget>.generate(items.length, (index) {
      final item = items[index];
      return Padding(
        padding: EdgeInsets.fromLTRB(index.toDouble() * overlap, 0, 0, 0),
        child: item,
      );
    });

    return Center(
      child: Container(
        padding: const EdgeInsets.all(CapybaraPadding.small),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(CapybaraPadding.small),
        ),
        child: Row(
          children: [
            Stack(children: stackLayers.reversed.toList()),
            const SizedBox(width: CapybaraPadding.small),
            const Icon(
              Icons.arrow_upward_rounded,
              color: Colors.white,
            ),
            const SizedBox(width: CapybaraPadding.small),
            const Text(
              '5 News Update',
              style: CapybaraTypographyScale.titleSmallBold,
            ),
          ],
        ),
      ),
    );
  }
}
