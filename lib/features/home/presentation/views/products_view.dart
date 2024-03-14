

import 'package:az_store/core/utils/styles.dart';
import 'package:az_store/features/home/presentation/views/widgets/product_view_body.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key, required this.categoryName});
final String categoryName;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:  Text(categoryName,style: Styles.textStyle24,),

        ),
        body: const ProductsViewBody(),
      ),
    );
  }
}
