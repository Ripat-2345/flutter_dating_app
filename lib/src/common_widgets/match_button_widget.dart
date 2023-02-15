import 'package:dating_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:flutter/material.dart';

class MatchButtonWidget extends StatelessWidget {
  final double dimension;
  final String iconPath;
  final VoidCallback onTap;

  const MatchButtonWidget(
      {required this.iconPath,
      required this.onTap,
      this.dimension = 50.0,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: dimension,
        height: dimension,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("${AssetImageIconManager.assetPath}/$iconPath"),
          ),
        ),
      ),
    );
  }
}
