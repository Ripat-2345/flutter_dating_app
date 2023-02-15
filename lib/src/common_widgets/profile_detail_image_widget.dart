import 'package:flutter/material.dart';

import '../theme_manager/asset_image_icon_manager.dart';
import '../theme_manager/font_manager.dart';
import '../theme_manager/style_manager.dart';
import '../theme_manager/values_manager.dart';
import 'match_button_widget.dart';

class ProfileDetailImageWidget extends StatelessWidget {
  const ProfileDetailImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 320.0,
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
    );
  }
}
