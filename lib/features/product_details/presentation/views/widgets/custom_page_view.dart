

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_icon_button.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .35,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return SizedBox(
                  child: ClipRRect(
                    borderRadius: const BorderRadiusDirectional.only(
                      bottomStart: Radius.circular(32),
                      bottomEnd: Radius.circular(32)
                    ),
                    child: Image.network(
                      "https://images.pexels.com/photos/2661929/pexels-photo-2661929.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      fit: BoxFit.fill,
                    ),
                  ));
            },
            itemCount: 5,
          ),
        ),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             CustomIconButton(
               iconSize: 35, icon: FontAwesomeIcons.arrowLeft,color: Colors.black,
onPressed:(){
GoRouter.of(context).pop();
}
             ),
             const CustomIconButton(iconSize: 45, icon: Icons.favorite,color: Colors.red,),
           ],
         ),
        Positioned(
          bottom: 10,
          right: MediaQuery.of(context).size.width / 2.5,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(16),
                color: Colors.grey.withOpacity(.5)),
            width: 80,
            height: 20,
            child: Center(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsetsDirectional.only(start: 4),
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsetsDirectional.only(start: 2),
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.white,
                    ),
                  );
                },
                itemCount: 5,
              ),
            ),
          ),
        )
      ],
    );
  }
}
