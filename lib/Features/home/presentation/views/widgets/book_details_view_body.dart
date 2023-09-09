import 'package:bookly_app/Core/utlis/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_books_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_listView.dart';
import 'package:flutter/material.dart';
import 'books_cost_button.dart';
import 'custom_bookDetail_appBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const CustomBookDetailAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.25),
              child: const CustomBooksItem(),
            ),
            const SizedBox(
              height: 43,
            ),
            const Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
            const SizedBox(
              height: 6,
            ),
            Opacity(
              opacity: 0.7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 37,
            ),
            const BooksCostButtons(),
            const SizedBox(
              height: 50,
            ),
            Align( //عشان اعمل الاين لويجيت لوحدها بس دون تطبيق الألاين ع كل الويدجيت
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SimilarBooksListView(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}


