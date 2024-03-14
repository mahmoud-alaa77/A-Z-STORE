
import 'package:az_store/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:az_store/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeViewBody(),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}




