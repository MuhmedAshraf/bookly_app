import 'package:bookly_app/Core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'listView_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24,),
      child: Column(

        children: const [
          CustomAppBar(),
          ListViewBooks(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.tittleMedium,
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
