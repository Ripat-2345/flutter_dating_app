import 'package:dating_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:dating_app/src/theme_manager/font_manager.dart';
import 'package:dating_app/src/theme_manager/style_manager.dart';
import 'package:dating_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/match_button_widget.dart';

class PeopleProfileScreen extends StatelessWidget {
  static const String routeName = '/people-profile';
  const PeopleProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 420.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "${AssetImageIconManager.assetPath}/people_love1_image.png",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppPadding.p40,
                  horizontal: AppPadding.p26,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MatchButtonWidget(
                      dimension: 24,
                      iconPath: 'icon_arrow_left.png',
                      onTap: () {},
                    ),
                    Text(
                      "Lover Profile\nDetail",
                      style: getWhiteTextStyle(
                        fontSize: FontSizeManager.f20,
                        fontWeight: FontWeightManager.semiBold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    MatchButtonWidget(
                      dimension: 24,
                      iconPath: 'icon_close_circle.png',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shayna',
                  style: getWhiteTextStyle(
                    fontSize: FontSizeManager.f28,
                    fontWeight: FontWeightManager.semiBold,
                  ),
                ),
                Text(
                  '22 lawyer',
                  style: getBlackTextStyle(),
                ),
                const SizedBox(height: AppSize.s16),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: getWhiteTextStyle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
