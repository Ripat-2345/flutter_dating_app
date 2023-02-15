import 'package:dating_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:dating_app/src/theme_manager/color_manager.dart';
import 'package:flutter/material.dart';

import 'glass_card_widget.dart';

class MatchCardWidget extends StatelessWidget {
  const MatchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            border: Border.all(
              width: 10.0,
              color: ColorManager.secondary,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "${AssetImageIconManager.assetPath}/people_love2_image.png",
              ),
            ),
          ),
        ),
        const GlassCardWidget(),
      ],
    );
  }
}
