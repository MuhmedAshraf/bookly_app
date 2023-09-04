import 'package:bookly_app/Core/utlis/styles.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/utlis/assets.dart';
import 'custom_app_bar.dart';
import 'listView_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          ListViewBooks(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
            textAlign: TextAlign.start,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.red,
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsData.testBook),
              )),
        ),
      ),
    );
  }
}
