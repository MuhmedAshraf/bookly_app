import 'package:flutter/material.dart';

import '../../../../../Core/utils/assets.dart';

class CustomBooksItem extends StatelessWidget {
  const CustomBooksItem({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imageUrl),
            )),
      ),
    );
  }
}
