import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../design_token/index.dart';
import 'index.dart';

mixin Profiles {
  static Widget simple(String name) {
    return AspectRatio(
      aspectRatio: 5 / 1,
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                ),
              ),
            ),
            const SizedBox(width: 16),
            Text(name),
          ],
        ),
      ),
    );
  }

  static Widget withProgressAndSignStatus({
    String? nameTag,
    String? username,
    required bool signStatus,
    required bool isExpanded,
    required bool progressDone,
    required Function(bool)? onExpand,
    String progressPercetage = '0%',
  }) {
    if (signStatus) {
      return SizedBox(
        child: Column(
          children: [
            Container(
              width: Get.width,
              color: Colors.grey[200],
              padding: const EdgeInsets.all(CapybaraPadding.medium),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(
                            CapybaraPadding.verySmall,
                          ),
                        ),
                      ),
                      const SizedBox(width: CapybaraPadding.medium),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nameTag!,
                          ),
                          const SizedBox(height: CapybaraPadding.small),
                          Text(
                            username!,
                            style: CapybaraTypographyScale.titleModerateBold,
                          ),
                        ],
                      )
                    ],
                  ),
                  if (isExpanded)
                    GestureDetector(
                      onTap: () {
                        onExpand?.call(!isExpanded);
                      },
                      child: const Icon(
                        Icons.keyboard_arrow_up_rounded,
                      ),
                    )
                  else
                    GestureDetector(
                      onTap: () {
                        onExpand?.call(!isExpanded);
                      },
                      child: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                      ),
                    ),
                ],
              ),
            ),
            if (isExpanded)
              Column(
                children: [
                  Dividers.line(
                    height: 1,
                    color: Colors.white,
                    marginVertical: 0,
                    marginHorizontal: 0,
                  ),
                  if (progressDone)
                    Container(
                      height: 100,
                      width: Get.width,
                      padding: const EdgeInsets.all(CapybaraPadding.medium),
                      color: Colors.grey[200],
                      child: RichText(
                        text: TextSpan(
                          text: '',
                          style: CapybaraTypographyScale.bodySmall.copyWith(fontWeight: FontWeight.normal, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(text: 'Kelengkapan data diri $progressPercetage', style: const TextStyle(fontWeight: FontWeight.bold)),
                            const TextSpan(text: '\n\nBantu kami untuk merekomendasikan konten dengan melengkapi data diri Anda'),
                            const TextSpan(text: ' di sini', style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  Dividers.line(
                    height: 1,
                    color: Colors.white,
                    marginVertical: 0,
                    marginHorizontal: 0,
                  ),
                  Container(
                    width: Get.width,
                    color: Colors.grey[200],
                    padding: const EdgeInsets.all(CapybaraPadding.medium),
                    child: const Text(
                      'Dashboard',
                      style: CapybaraTypographyScale.titleModerateBold,
                    ),
                  ),
                  Dividers.line(
                    height: 1,
                    color: Colors.white,
                    marginVertical: 0,
                    marginHorizontal: 0,
                  ),
                  Container(
                    width: Get.width,
                    color: Colors.grey[200],
                    padding: const EdgeInsets.all(CapybaraPadding.medium),
                    child: const Text(
                      'Log Out',
                      style: CapybaraTypographyScale.titleModerateBold,
                    ),
                  ),
                ],
              ),
          ],
        ),
      );
    }
    return Container(
      width: Get.width,
      color: Colors.grey[200],
      padding: const EdgeInsets.all(CapybaraPadding.medium),
      child: Row(
        children: const [
          Icon(
            Icons.admin_panel_settings_outlined,
          ),
          SizedBox(width: CapybaraPadding.medium),
          Text(
            'Log In',
            style: CapybaraTypographyScale.titleModerateBold,
          )
        ],
      ),
    );
  }
}
