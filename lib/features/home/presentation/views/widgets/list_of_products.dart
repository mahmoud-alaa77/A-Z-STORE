

import 'package:az_store/features/home/presentation/views/widgets/product_item.dart';
import 'package:flutter/material.dart';


class ListOfProduct extends StatelessWidget {
  const ListOfProduct({super.key, required this.shrinkWrapValue, this.scrollPhysics});
final bool shrinkWrapValue;
final ScrollPhysics? scrollPhysics;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GridView.builder(
        shrinkWrap: shrinkWrapValue,
        physics: scrollPhysics,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 12.0, // spacing between columns
        ),
        padding: const EdgeInsets.all(8.0), // padding around the grid
        itemCount: 12, // total number of items
        itemBuilder: (context, index) {
          return const ProductItem();
        },
      ),
    );
  }
}
