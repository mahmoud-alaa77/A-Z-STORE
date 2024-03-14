
import 'package:az_store/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:az_store/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 16,vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomSearchTextField(),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsetsDirectional.symmetric(vertical: 6),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(16),
                        child: Image.network("https://images.pexels.com/photos/2661929/pexels-photo-2661929.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                          width: MediaQuery.of(context).size.width/2.5,
                          //fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Microsoft Surface Laptop 4", style: Styles.textStyle16,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,

                            ),
                            Text(" \$120",
                              style: Styles.textStyle18.copyWith(fontSize: 16),
                            ),

                            Row(
                              children: [
                                const Icon(Icons.star,color: Colors.amber,),
                                Text("4.5",style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w300),)

                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: 12,
            )
          ],
        ),
      ),
    );
  }
}
