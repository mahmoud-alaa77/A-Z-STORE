


import 'package:az_store/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/constants.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
          navigator(currentPageIndex,context);
        });
      },
      indicatorColor: kPrimaryColor,
      selectedIndex: currentPageIndex,
      backgroundColor: Colors.white,
      elevation: 1,
      indicatorShape: ShapeBorder.lerp(
          OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          LinearBorder.none,
      0),
      height: 70,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',

        ),
        NavigationDestination(
          icon:  Icon(Icons.category_outlined),
          label: 'Categories',
        ),
        NavigationDestination(
          icon:  Icon(Icons.shopping_cart),

          label: 'Cart',
        ),
        NavigationDestination(
          icon:  Icon(Icons.favorite),

          label: 'Favorite',
        ),
        NavigationDestination(
          icon:  Icon(Icons.person),

          label: 'Profile',
        ),
      ],

    );
  }
}

void navigator(int index,BuildContext context){
  if(index==0){
    GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
  }else if(index==1){
    GoRouter.of(context).pushReplacement(AppRouter.kCategoriesView);

  }else if(index==1){
    GoRouter.of(context).pushReplacement(AppRouter.kHomeView);

  }else if(index==1){
    GoRouter.of(context).pushReplacement(AppRouter.kHomeView);

  }
}