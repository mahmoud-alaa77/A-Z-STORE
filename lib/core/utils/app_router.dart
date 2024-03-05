
import 'package:az_store/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

class AppRouter{
  static const kHomeView = '/home_view';

  static final router = GoRouter(
routes: [

  GoRoute(
    path: '/',
    builder: ( context,  state) {
      return const SplashView();
    },
  ),

  GoRoute(
      path: kHomeView,
    builder: (context, state) =>const HomeView(),
  )
]
  );
}