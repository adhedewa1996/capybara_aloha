import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../design_token/index.dart';

class BottomSheets<T extends GetxController> {
  void normal({
    required String title,
    required int groupValue,
    required Function(String channel, int index) onChanged,
    required Color activeColor,
    required String selected,
    required List<String> options,
  }) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(CapybaraPadding.large),
      ),
      context: Get.context!,
      builder: (context) {
        return GetBuilder<T>(
          builder: (dynamic controller) {
            return Container(
              width: Get.width,
              height: Get.height * 0.4 + 50,
              margin: const EdgeInsets.all(CapybaraPadding.medium),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                      const SizedBox(),
                      Text(
                        title,
                        style: CapybaraTypographyScale.titleModerateBold,
                      ),
                      const SizedBox(),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.close,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: CapybaraPadding.medium),
                  SizedBox(
                    width: Get.width,
                    height: Get.height * 0.4,
                    child: ListView(
                      children: options
                          .asMap()
                          .map((i, e) {
                            return MapEntry(
                              i,
                              RadioListTile(
                                value: i,
                                groupValue: controller.selectedChannelIndex,
                                title: Text(e),
                                onChanged: (index) {
                                  controller.setSelectedChannel(e, index!);
                                },
                                activeColor: Colors.red,
                                selected: e == controller.selectedChannel,
                                contentPadding: EdgeInsets.zero,
                              ),
                            );
                          })
                          .values
                          .toList(),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void withSearch({
    required String title,
    required int groupValue,
    required Function(String channel, int index) onChanged,
    required Color activeColor,
    required String selected,
    required List<Options> options,
    required List<Options> tempSearchOptions,
    required TextEditingController textController,
  }) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(CapybaraPadding.large),
      ),
      isDismissible: false,
      context: Get.context!,
      builder: (context) {
        return GetBuilder<T>(
          builder: (dynamic controller) {
            return Container(
              width: Get.width,
              height: Get.height * 0.4 + 150,
              margin: const EdgeInsets.all(CapybaraPadding.medium),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                      const SizedBox(),
                      Text(
                        title,
                        style: CapybaraTypographyScale.titleModerateBold,
                      ),
                      const SizedBox(),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                          controller.searchText.text = '';
                        },
                        child: const Icon(
                          Icons.close,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: CapybaraPadding.medium),
                  TextFormField(
                    controller: textController,
                    onChanged: (value) {
                      controller.searchOption(value);
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: CapybaraPadding.medium),
                    ),
                  ),
                  const SizedBox(height: CapybaraPadding.medium),
                  controller.searchText.text != ''
                      // ? SizedBox()
                      ? SizedBox(
                          width: Get.width,
                          height: Get.height * 0.4,
                          child: ListView(
                            children: List<Options>.from(controller.tempSearchOptions)
                                .asMap()
                                .map((i, e) {
                                  return MapEntry(
                                    i,
                                    RadioListTile(
                                      value: e.index,
                                      groupValue: controller.searchSelectedChannelIndex,
                                      title: Text(e.option),
                                      onChanged: (index) {
                                        controller.setSearchSelectedChannel(e.option, e.index);
                                      },
                                      activeColor: Colors.red,
                                      selected: e.option == controller.searchSelectedChannel,
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                  );
                                })
                                .values
                                .toList(),
                          ),
                        )
                      : SizedBox(
                          width: Get.width,
                          height: Get.height * 0.4,
                          child: ListView(
                            children: options
                                .asMap()
                                .map((i, e) {
                                  return MapEntry(
                                    i,
                                    RadioListTile(
                                      value: e.index,
                                      groupValue: controller.searchSelectedChannelIndex,
                                      title: Text(e.option),
                                      onChanged: (index) {
                                        controller.setSearchSelectedChannel(e.option, e.index);
                                      },
                                      activeColor: Colors.red,
                                      selected: e.option == controller.searchSelectedChannel,
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                  );
                                })
                                .values
                                .toList(),
                          ),
                        ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class Options {
  Options({
    required this.index,
    required this.option,
  });
  final int index;
  final String option;
}
