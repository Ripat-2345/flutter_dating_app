import 'package:dating_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:dating_app/src/theme_manager/color_manager.dart';
import 'package:dating_app/src/theme_manager/font_manager.dart';
import 'package:dating_app/src/theme_manager/style_manager.dart';
import 'package:dating_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class PeopleLovedCardWidget extends StatelessWidget {
  const PeopleLovedCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p22,
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: AppMargin.m18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s20),
          color: ColorManager.secondary,
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(10),
          leading: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "${AssetImageIconManager.assetPath}/people_love3_image.png"),
              ),
            ),
          ),
          title: Text(
            "Ismirada",
            style: getWhiteTextStyle(
              fontSize: FontSizeManager.f20,
              fontWeight: FontWeightManager.semiBold,
            ),
          ),
          subtitle: Text(
            '24, Doctor',
            style: getGrey60TextStyle(),
          ),
        ),
      ),
    );
  }
}
