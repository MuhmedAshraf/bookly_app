import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Splash/presentations/views/splash_view.dart';
import '../../Features/home/presentation/views/book_details_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/BookDetailsView';
  static final router = GoRouter(
      routes: <RouteBase>[ // بيحتوي ع كل الراوتس بتاعتك
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
        path: kHomeView,
        builder: (context, state) {
          return const BookDetailsView();
        }),
  ]);
}
