import 'package:flutter/material.dart';
import 'custom_search_textField.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: const[
            CustomSearchTextField(),
          ],
        ),
      ),
    );
  }
}

