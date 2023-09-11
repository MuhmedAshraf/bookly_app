import 'package:flutter/material.dart';
import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(),
        ),
        itemCount: 10,
      ),
    );
  }
}
