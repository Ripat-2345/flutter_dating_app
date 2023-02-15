import 'package:dating_app/src/theme_manager/font_manager.dart';
import 'package:dating_app/src/theme_manager/style_manager.dart';
import 'package:dating_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/people_loved_card_widget.dart';

class PeopleLovedScreen extends StatelessWidget {
  static const String routeName = '/people-loved';
  const PeopleLovedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "People You\nLoved",
          style: getWhiteTextStyle(
            fontSize: FontSizeManager.f20,
            fontWeight: FontWeightManager.semiBold,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: AppSize.s50),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return PeopleLovedCardWidget();
              },
              itemCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
