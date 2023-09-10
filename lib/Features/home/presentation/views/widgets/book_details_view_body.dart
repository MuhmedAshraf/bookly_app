import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_books_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_listView.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'books_cost_button.dart';
import 'books_details_section.dart';
import 'custom_bookDetail_appBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: const [
                  CustomBookDetailAppBar(),
                  BookDetailsSection(),
                  Expanded(
                      child: SizedBox(
                    height: 50,
                  )),
                  SimilarBookSection(),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




