import 'package:bookly_app/Core/GlobalSharedWidget/custom_loadingIndicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBooksItem extends StatelessWidget {
  const CustomBooksItem({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //ويدجيت تقدر تحطها فوق اي ويدجيت تانية عشان تعملها قص ع قد radius بتاعك
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          //باكدج بتكيشلك الصور اللي جاية من النت بشكل محترم وكمان تقدر من خلالها تحط حاجة وقت التحميل بتاع الصورة وكمان لو الصورة جات ب ايرور تقدر تحط ويدجيت تتعمل في حالة الايرور
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(Icons.info_outline),
          placeholder: (context, url) => const CustomLoadingIndicator(),
        ),
      ),
    );
  }
}
