import 'package:bookly_app/Core/utils/service_locator.dart';
import 'package:bookly_app/Features/home/data/model/BookModel.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentations/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Splash/presentations/views/splash_view.dart';
import '../../Features/home/presentation/views/book_details_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetail';
  static const kSearchView = '/search';

  static final router = GoRouter(routes: <RouteBase>[
    // بيحتوي ع كل الراوتس بتاعتك
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        }),
    GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        }),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) {
        return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child:  BookDetailsView(
              bookModel: state.extra as BookModel, //بستخدم الصيغة دي لما اعوز ابعت حاجة مع الكلاس ع هيئة اوبجيكت
            ));
      },
    ),
    GoRoute(
        path: kSearchView,
        builder: (context, state) {
          return const SearchView();
        }),
  ]);
}
