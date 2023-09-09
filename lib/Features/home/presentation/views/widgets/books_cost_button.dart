import 'package:flutter/material.dart';

import '../../../../../Core/GlobalSharedWidget/custom_button.dart';

class BooksCostButtons extends StatelessWidget {
  const BooksCostButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: const [
          Expanded(
              child: CustomButton(
                text: '19.99€',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12), bottomLeft: Radius.circular(16)),
              )),
          Expanded(
              child: CustomButton(
                text: 'Free preview',
                backgroundColor: Color(0xffEF8262),
                textColor: Colors.white,
                fontSize: 16,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12), bottomRight: Radius.circular(16)),
              )),
        ],
      ),
    );
  }
}
