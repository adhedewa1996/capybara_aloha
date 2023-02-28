// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'image.dart';
// import 'Capybara_image.dart';
// import 'design_token/Capybara_padding.dart';

// class ItemNews extends StatelessWidget {
//   const ItemNews({
//     super.key,
//     this.thumbnail,
//     this.placeholder,
//     this.title,
//     this.titleStyling,
//     this.channelName,
//     this.channelNameStyling,
//     this.datetime,
//     this.datetimeStyling,
//     this.channelId,
//     this.footerSeparator,
//   });

//   final String? thumbnail;
//   final String? placeholder;
//   final String? title;
//   final TextStyle? titleStyling;
//   final String? channelName;
//   final TextStyle? channelNameStyling;
//   final String? datetime;
//   final TextStyle? datetimeStyling;
//   final String? channelId;
//   final Widget? footerSeparator;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         CapybaraImage(
//           url: thumbnail ?? '',
//           imagePlaceholder: placeholder ?? '',
//           placeholderType: CapybaraImagePlaceholderType.network,
//           width: Get.width * 0.3,
//           height: Get.width * 0.2,
//         ),
//         SizedBox(width: CapybaraPadding.small),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(title ?? '', style: titleStyling ?? const TextStyle()),
//             Row(
//               children: [
//                 Text(channelName ?? '', style: channelNameStyling ?? const TextStyle()),
//                 footerSeparator!,
//                 Text(datetime ?? '', style: datetimeStyling ?? const TextStyle()),
//               ],
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
