import 'package:az_store/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/constants.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Image.asset(kLogoPath,
            height: 52,
          ),
          actions: [
            IconButton(
                onPressed: () {
              GoRouter.of(context).pop();
            },
                icon:const Icon(Icons.close,size: 35,)
            ),
          ],
        ),
        body: const SearchViewBody(),
      ),
    );
  }
}
