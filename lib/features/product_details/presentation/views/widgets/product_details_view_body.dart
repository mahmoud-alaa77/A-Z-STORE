import 'package:az_store/features/product_details/presentation/views/widgets/similar_products_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'category_and_brand_widget.dart';
import 'custom_page_view.dart';
import 'custom_rating_widget.dart';
import 'quantity_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomPageView(),
          const CategoryAndBrandWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 3,
                  child: Text(
                    "Non-Alcoholic Concentrated Perfume Oil",
                    style: Styles.textStyle20,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$15.25",
                        style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w900),
                      ),
                    //  const SizedBox(height: 4),
                      Text(
                        "\$20.00",
                        style: Styles.textStyle14.copyWith(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "25% OFF",
                        style: Styles.textStyle16.copyWith(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const CustomRatingWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Mornadi Velvet Bed Base with Headboard Slats Support Classic Style Bedroom Furniture Bed Set .",
              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w200),
            ),
          ),
          const QuantitySection(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  color: Colors.white,
                  text: "       Buy Now",
                  textColor: Colors.black,
                ),
                SizedBox(width: 8),
                CustomButton(
                  color: Colors.black,
                  text: "Add To Cart",
                  textColor: Colors.white,
                  icon: Icons.shopping_cart,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "You may like",
              style: Styles.textStyle18,
            ),
          ),
                const SimilarProductsListView()
        ],
      ),
    );
  }
}


