import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../design_token/index.dart';

mixin Stickys {
  static Widget changeSizeAndShare({
    required Function changeSizeFirst,
    required Function changeSizeSecond,
    required Function changeSizeThird,
    required Function share,
  }) {
    return Container(
        width: Get.width,
        padding: const EdgeInsets.all(CapybaraPadding.medium),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(CapybaraPadding.small),
            topLeft: Radius.circular(CapybaraPadding.small),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    changeSizeFirst.call();
                  },
                  child: const Icon(
                    Icons.text_rotation_angleup,
                    size: CapybaraPadding.small * 4,
                  ),
                ),
                const SizedBox(width: CapybaraPadding.small),
                GestureDetector(
                  onTap: () {
                    changeSizeSecond.call();
                  },
                  child: const Icon(
                    Icons.text_rotation_angleup,
                    size: CapybaraPadding.small * 3.5,
                  ),
                ),
                const SizedBox(width: CapybaraPadding.small),
                GestureDetector(
                  onTap: () {
                    changeSizeThird.call();
                  },
                  child: const Icon(
                    Icons.text_rotation_angleup,
                    size: CapybaraPadding.small * 3,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                share.call();
              },
              child: const Icon(
                Icons.share,
                size: CapybaraPadding.small * 3,
              ),
            ),
          ],
        ));
  }
}
