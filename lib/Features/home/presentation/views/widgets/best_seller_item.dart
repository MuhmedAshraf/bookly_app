import 'package:bookly_app/Core/utlis/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utlis/assets.dart';
import '../../../../../Core/utlis/styles.dart';
import 'book_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
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
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}