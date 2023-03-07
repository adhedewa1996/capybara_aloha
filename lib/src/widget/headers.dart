import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../design_token/index.dart';

mixin Headers {
  static Widget normal({
    required String title,
    required TextStyle titleStyle,
    required IconData icon,
    required Function() callback,
  }) {
    return Container(
      padding: const EdgeInsets.all(CapybaraPadding.small),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: titleStyle,
          ),
          GestureDetector(
            onTap: () => callback.call(),
            child: SizedBox(
              width: 25,
              height: 25,
              child: Icon(icon),
            ),
          )
        ],
      ),
    );
  }

  static Widget withSearchBar({
    required String title,
    required String selectedItem,
    required Function() onClick,
    IconData icon = Icons.sort,
    ItemAxis itemAxis = ItemAxis.vertical,
  }) {
    if (itemAxis == ItemAxis.vertical) {
      return GestureDetector(
        onTap: () {
          onClick.call();
        },
        child: Container(
          padding: const EdgeInsets.all(CapybaraPadding.small),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: CapybaraTypographyScale.titleLarge,
              ),
              Container(
                width: Get.width * 0.5,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(),
                ),
                padding: const EdgeInsets.symmetric(horizontal: CapybaraPadding.small),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width * .35,
                      child: Text(
                        selectedItem,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Icon(icon),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: () {
        onClick.call();
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: CapybaraTypographyScale.titleLarge,
            ),
            const SizedBox(height: 8),
            Container(
              width: Get.width,
              height: 30,
              padding: const EdgeInsets.symmetric(horizontal: CapybaraPadding.small),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width * .75,
                    child: Text(
                      selectedItem,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(icon),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget withAuthorOrIcon({
    required String title,
    required String datetime,
    String? authorName,
    IconData? icon,
    Function()? onMore,
  }) {
    return Container(
      padding: const EdgeInsets.all(CapybaraPadding.small),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (icon != null)
                GestureDetector(
                  onTap: () => {},
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
              SizedBox(
                width: Get.width * .7,
                child: Text(
                  title,
                  style: CapybaraTypographyScale.titleHero,
                ),
              ),
              if (onMore != null)
                GestureDetector(
                  onTap: () => onMore.call(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text('More'),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              if (authorName != null)
                Row(
                  children: [
                    Text(authorName),
                    Container(
                      width: 5,
                      height: 5,
                      margin: const EdgeInsets.symmetric(horizontal: CapybaraPadding.small),
                      decoration: BoxDecoration(
                        color: Colors.red[200],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              Text(datetime),
            ],
          ),
        ],
      ),
    );
  }
}
