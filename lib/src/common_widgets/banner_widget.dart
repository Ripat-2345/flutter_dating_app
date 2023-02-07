import 'package:flutter/material.dart';

import 'hero_widget.dart';
import 'logo_and_tagline_widget.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        LogoAndTaglineWidget(),
        HeroWidget(),
      ],
    );
  }
}
