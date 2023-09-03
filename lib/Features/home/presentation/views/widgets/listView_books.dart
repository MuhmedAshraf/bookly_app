import 'package:flutter/material.dart';

import 'custom_books_item.dart';

class ListViewBooks extends StatelessWidget {
  const ListViewBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomBooksItem(),
            );
          }),
    );
  }
}
