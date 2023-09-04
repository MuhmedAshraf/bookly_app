import 'package:flutter/material.dart';
import 'custom_bookDetail_appBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          CustomBookDetailAppBar(),
        ],
      ),
    );
  }
}

