
import 'package:az_store/features/home/presentation/views/categories_view.dart';
import 'package:az_store/features/home/presentation/views/home_view.dart';
import 'package:az_store/features/home/presentation/views/products_view.dart';
import 'package:az_store/features/product_details/presentation/views/product_details_view.dart';
import 'package:az_store/features/search/presentation/views/search_view.dart';
import 'package:az_store/features/splash/presentation/views/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

class AppRouter{
  static const kHomeView = '/home_view';
  static const kProductDetailsView = '/product_details_view';
  static const kOnBoardingView = '/on_boarding_view';
  static const kSearchView = '/search_view';
  static const kCategoriesView = '/categories_view';
  static const kProductsView = '/products_view';

  static final router = GoRouter(
routes: [

  GoRoute(
    path: '/',
    builder: ( context,  state) {
      return const SplashView();
    },
  ),

  GoRoute(
    path: kOnBoardingView,
    builder: (context, state) =>const OnBoardingView(),
  ),

  GoRoute(
      path: kHomeView,
    builder: (context, state) =>const HomeView(),
  ),
  GoRoute(
    path: kSearchView,
    builder: (context, state) =>const SearchView(),
  ),
  GoRoute(
    path: kProductDetailsView,
    builder: (context, state) =>const ProductDetailsView(),
  ),
  GoRoute(
    path: kCategoriesView,
    builder: (context, state) =>const CategoriesView(),
  ),
  GoRoute(
    path: kProductsView,
    builder: (context, state) {
      final String extraData = state.extra as String;
    return   ProductsView(categoryName: extraData);
    },
  )
]
  );
}