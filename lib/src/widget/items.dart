import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../design_token/index.dart';

mixin Items {
  static Widget marketWithIndicator({
    required String indexCode,
    required String last,
    required String percentage,
    required String change,
    required bool isIncrease,
    ItemAxis itemAxis = ItemAxis.horizontal,
  }) {
    if (itemAxis == ItemAxis.horizontal) {
      return Container(
        margin: const EdgeInsets.all(CapybaraPadding.small),
        padding: const EdgeInsets.symmetric(horizontal: CapybaraPadding.small, vertical: CapybaraPadding.medium),
        width: Get.width * .35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  indexCode,
                  style: CapybaraTypographyScale.titleModerateBold,
                ),
                Text(last),
              ],
            ),
            indicator(
              isIncrease: isIncrease,
              indicatorStyle: IndicatorStyle.second,
              percentage: percentage,
              change: change,
            ),
          ],
        ),
      );
    }
    return Container(
      margin: const EdgeInsets.all(CapybaraPadding.small),
      padding: const EdgeInsets.symmetric(horizontal: CapybaraPadding.extraLarge, vertical: CapybaraPadding.medium),
      height: Get.height * .15,
      width: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            indexCode,
            style: CapybaraTypographyScale.titleModerateBold,
          ),
          Text(last),
          Row(
            children: [
              indicator(
                isIncrease: isIncrease,
                indicatorStyle: IndicatorStyle.first,
              ),
              const SizedBox(width: CapybaraPadding.small),
              Text(percentage),
            ],
          ),
          Text(change),
        ],
      ),
    );
  }

  static Widget simpleBox({
    required String title,
    required Function() onClick,
  }) {
    return GestureDetector(
      onTap: () {
        onClick.call();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: CapybaraPadding.small,
          horizontal: CapybaraPadding.medium,
        ),
        margin: const EdgeInsets.only(left: CapybaraPadding.small),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(
            CapybaraPadding.verySmall,
          ),
        ),
        child: Text(
          title,
          style: CapybaraTypographyScale.titleSmallBold,
        ),
      ),
    );
  }

  static Widget indicator({
    required bool isIncrease,
    required IndicatorStyle indicatorStyle,
    String? percentage,
    String? change,
  }) {
    String text = '';
    Color color = Colors.white;
    Widget? widget;

    switch (indicatorStyle) {
      case IndicatorStyle.first:
        if (isIncrease) {
          text = '▲';
          color = Colors.green;
        } else {
          text = '▼';
          color = Colors.red;
        }
        widget = Text(text, style: TextStyle(color: color));
        break;
      case IndicatorStyle.second:
        widget = Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            indicator(
              isIncrease: isIncrease,
              indicatorStyle: IndicatorStyle.first,
            ),
            const SizedBox(width: CapybaraPadding.small),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(change!),
                Text(percentage!),
              ],
            ),
          ],
        );
        break;
    }
    return widget;
  }

  static Widget news({
    required String title,
    required String channelName,
    required String datetime,
    required int index,
    bool showIndex = false,
    ItemAxis itemAxis = ItemAxis.vertical,
    ItemType itemType = ItemType.news,
    double aspectRatio = 3 / 2,
    IconData icon = Icons.photo,
  }) {
    if (itemAxis == ItemAxis.horizontal) {
      return Container(
        padding: const EdgeInsets.all(CapybaraPadding.medium),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: aspectRatio,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 16,
                      left: 16,
                      child: Icon(icon),
                    )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 16),
                Text(title),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text(channelName),
                    const SizedBox(width: 16),
                    Text(datetime),
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }
    return SizedBox(
      width: Get.width,
      height: 100,
      child: Container(
        padding: const EdgeInsets.all(CapybaraPadding.medium),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    if (itemType == ItemType.video || itemType == ItemType.photo)
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Icon(icon),
                      ),
                    if (showIndex)
                      Positioned(
                        bottom: 8,
                        right: 8,
                        child: Text(
                          index.toString(),
                          style: CapybaraTypographyScale.titleExtraLarge,
                        ),
                      )
                  ],
                ),
              ),
            ),
            Container(
              width: Get.width * .6,
              margin: const EdgeInsets.symmetric(horizontal: CapybaraPadding.medium),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(channelName),
                      Text(datetime),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  static Widget headline({
    required String title,
    required String channelName,
    required String datetime,
  }) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(CapybaraPadding.medium),
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  width: Get.width * .8,
                  height: 80,
                  margin: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title),
                      Row(
                        children: [
                          Text(channelName),
                          const SizedBox(width: 16),
                          Text(datetime),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget infografis() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Infografis'),
              Icon(
                Icons.arrow_forward_ios_rounded,
              )
            ],
          ),
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const Text('Lorem ipsum dolor sit amet conse ctetur pellentesque disasma.'),
        ],
      ),
    );
  }

  static Widget gridPicture() {
    return AspectRatio(
      aspectRatio: 1 / .71,
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.grey[200],
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 3 / 2,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 3 / 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[500],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: const [
                    Positioned(
                      left: 16,
                      bottom: 16,
                      child: Text('Ipsum'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  static Widget photoGallery() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Foto'),
              Icon(
                Icons.arrow_forward_ios_rounded,
              )
            ],
          ),
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Container(
              margin: const EdgeInsets.only(top: 16, bottom: 4),
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    bottom: 16,
                    child: SizedBox(
                      width: Get.width * 0.8,
                      child: const Text('Lorem ipsum dolor sit amet conse ctetur pellentesque disasma.'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            child: AspectRatio(
              aspectRatio: 4 / 1,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return AspectRatio(
                    aspectRatio: 0.9 / 0.933,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    width: 4,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget indexNews() {
    return AspectRatio(
      aspectRatio: 8 / 1,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(child: Text('Indeks Berita')),
      ),
    );
  }

  static Widget notFound() {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(
            margin: const EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Icon(
                Icons.photo,
                size: 100,
              ),
            ),
          ),
        ),
        const Text('Maaf konten yang anda cari tidak tersedia')
      ],
    );
  }

  static Widget line(String title, bool isSelected) {
    return Container(
      height: Get.height * .05,
      width: Get.width,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: isSelected ? 2.5 : 1,
            color: isSelected ? Colors.black : Colors.grey[200]!,
          ),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  static Widget tooth(String title, bool isSelected) {
    return Container(
      height: Get.height * .05,
      margin: const EdgeInsets.only(top: 16),
      decoration: isSelected
          ? const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              ),
            )
          : null,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  static Widget readAlso({
    required String title,
    required String urlImage,
    required String urlImagePlaceholder,
    required Function() callback,
  }) {
    return GestureDetector(
      onTap: () {
        callback.call();
      },
      child: Container(
        padding: const EdgeInsets.all(CapybaraPadding.medium),
        margin: const EdgeInsets.all(CapybaraPadding.medium),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Baca Juga :'),
            const SizedBox(height: CapybaraPadding.medium),
            SizedBox(
              width: Get.width,
              height: 75,
              child: SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Container(
                      width: Get.width * .55,
                      margin: const EdgeInsets.symmetric(horizontal: CapybaraPadding.medium),
                      child: Text(
                        title,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
