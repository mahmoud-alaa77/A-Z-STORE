
import 'package:az_store/features/home/presentation/views/widgets/list_of_products.dart';
import 'package:flutter/material.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {


    return const ListOfProduct(
      shrinkWrapValue: false,
      scrollPhysics: BouncingScrollPhysics(),
    );
  }
}
