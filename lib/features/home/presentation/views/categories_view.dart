

import 'package:az_store/core/utils/styles.dart';
import 'package:az_store/features/home/presentation/views/widgets/categories_view_body.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Categories",style: Styles.textStyle24,),

      ),
      body: const CategoriesViewBody(),
    );
  }
}
