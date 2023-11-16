import 'package:flutter/material.dart';
import 'package:test_project/views/home/presentation/screens/widgets/news_item.dart';
import 'package:test_project/views/home/presentation/screens/widgets/news_list_view.dart';

import '../../../../../core/utlis/app_constants.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: AppConnstants.kPrimeryColor,
        title: const Center(
          child: Text(
            'Look for Football News',
            style: TextStyle(
                // color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
      body: NewsListView(),
    );
  }
}
