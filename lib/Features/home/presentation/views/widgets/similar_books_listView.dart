import 'package:bookly_app/Core/GlobalSharedWidget/custom_error_widget.dart';
import 'package:bookly_app/Core/GlobalSharedWidget/custom_loadingIndicator.dart';
import 'package:bookly_app/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manger/similar_books_cubit/similar_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_books_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBooksItem(
                      imageUrl:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
                    ),
                  );
                }),
          );
        }
        else if(state is SimilarBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
