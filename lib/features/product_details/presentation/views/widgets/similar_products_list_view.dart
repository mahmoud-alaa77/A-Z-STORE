

import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/product_item.dart';

class SimilarProductsListView  extends StatelessWidget {
  const SimilarProductsListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsetsDirectional.only(top: 16,bottom: 42,end: 16),
            child: SizedBox(
                width: MediaQuery.of(context).size.width/2.5,
                child:   const ProductItem()),
          );
        },
      ),
    );
  }
}
