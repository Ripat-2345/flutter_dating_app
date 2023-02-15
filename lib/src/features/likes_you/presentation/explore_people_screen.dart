import 'package:dating_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/explore_people_app_bar_widget.dart';
import '../../../common_widgets/match_card_widget.dart';

class ExplorePeopleScreen extends StatelessWidget {
  static const String routeName = '/explore-people';
  const ExplorePeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: AppSize.s50,
          left: AppSize.s24,
          right: AppSize.s24,
        ),
        child: Column(
          children: [
            const ExplorePeopleAppBarWidget(),
            const SizedBox(height: AppSize.s50),
            Expanded(
              child: Column(
                children: [
                  Expanded(child: MatchCardWidget()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
