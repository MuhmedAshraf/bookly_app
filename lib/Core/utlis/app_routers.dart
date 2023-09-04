import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Splash/presentations/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
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
  ]);
}
