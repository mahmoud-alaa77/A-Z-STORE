
import 'package:az_store/core/utils/app_router.dart';
import 'package:az_store/features/product_details/presentation/views/widgets/custom_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';
class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(16),
              child: GestureDetector(
                onTap: (){
                  GoRouter.of(context).push(AppRouter.kProductDetailsView );
                },
                child: Container(
                  constraints: const BoxConstraints(
                      maxHeight: 120
                  ),
                  child: Image.network("https://images.pexels.com/photos/2661929/pexels-photo-2661929.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    width: MediaQuery.of(context).size.width/2,
                    fit: BoxFit.fill,
                  ),
                ),
              )),
          const Text("Microsoft Surface Laptop 4", style: Styles.textStyle18,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,

          ),
          Row(
            children: [
              Text("\$120",
                style: Styles.textStyle18.copyWith(fontSize: 16),
              ),
              Spacer(),
              Icon(Icons.star,color: Colors.amber,),
              Text("4.5",style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w300),)
            ],
          )

        ],
      ),
    );
  }
}
