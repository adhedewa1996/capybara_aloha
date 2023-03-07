import 'package:capybara_aloha/src/widget/index.dart';
import 'package:flutter/material.dart';

mixin Tabbars {
  static Widget line({
    required List<String> tabbarItems,
    required List<Widget> tabviewItems,
    required TabController tabController,
    required Function(int) onClickTab,
  }) {
    return Column(
      children: [
        SizedBox(
          child: TabBar(
            indicatorColor: Colors.transparent,
            indicatorPadding: EdgeInsets.zero,
            indicatorWeight: 1,
            controller: tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.zero,
            onTap: (index) {
              onClickTab.call(index);
            },
            tabs: tabbarItems
                .asMap()
                .map((i, e) {
                  return MapEntry(i, Items.line(e, i == tabController.index));
                })
                .values
                .toList(),
          ),
        ),
        Container(
          child: tabviewItems.map((e) => e).toList()[tabController.index],
        ),
      ],
    );
  }

  static Widget tooth({
    required List<String> tabbarItems,
    required List<Widget> tabviewItems,
    required TabController tabController,
    required Function(int) onClickTab,
  }) {
    return Column(
      children: [
        SizedBox(
          child: TabBar(
            indicatorColor: Colors.transparent,
            indicatorPadding: const EdgeInsets.only(left: 8, right: 8),
            indicatorWeight: 0.1,
            controller: tabController,
            onTap: (index) {
              onClickTab.call(index);
            },
            tabs: tabbarItems
                .asMap()
                .map((i, e) {
                  return MapEntry(i, Items.tooth(e, i == tabController.index));
                })
                .values
                .toList(),
          ),
        ),
        Container(
          child: tabviewItems.map((e) => e).toList()[tabController.index],
        ),
      ],
    );
  }
}
