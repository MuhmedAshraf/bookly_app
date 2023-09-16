import 'package:bookly_app/Core/GlobalSharedWidget/custom_error_widget.dart';
import 'package:bookly_app/Core/GlobalSharedWidget/custom_loadingIndicator.dart';
import 'package:bookly_app/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manger/featured_books_cubit/featured_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_books_item.dart';

class ListViewBooks extends StatelessWidget {
  const ListViewBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CustomBooksItem(
                      imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                      //state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                }),
          );
        }
        else if (state is FeaturedBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        else {
          return const CustomLoadingIndicator();
        }

      },
    );
  }
}
