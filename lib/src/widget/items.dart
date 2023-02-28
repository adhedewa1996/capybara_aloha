import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

mixin Items {
  static Widget market(String title) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title),
          Text(title),
          Text(title),
          Text(title),
        ],
      ),
    );
  }

  static Widget news({
    ItemAxis itemAxis = ItemAxis.vertical,
    ItemType itemType = ItemType.news,
    double aspectRatio = 3 / 2,
    IconData icon = Icons.photo,
  }) {
    if (itemAxis == ItemAxis.horizontal) {
      return Container(
        margin: const EdgeInsets.all(16),
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
                const Text('Lorem ipsum dolor sit amet consectetur pellentesque disasma.'),
                const SizedBox(height: 16),
                Row(
                  children: const [
                    Text('Market News'),
                    SizedBox(width: 16),
                    Text('12 Menit yang lalu'),
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
      height: 90,
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
                    )
                ],
              ),
            ),
          ),
          Container(
            width: Get.width * .6,
            margin: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Lorem ipsum dolor sit amet consectetur pellentesque disasma.'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Market News'),
                    Text('12 Menit yang lalu'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  static Widget headline() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
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
                      const Text('Lorem ipsum dolor sit amet consectetur pellentesque disasma.'),
                      Row(
                        children: const [
                          Text('Market News'),
                          SizedBox(width: 16),
                          Text('12 Menit yang lalu'),
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

  static Widget profile(String name) {
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
}
