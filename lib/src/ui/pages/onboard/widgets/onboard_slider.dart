import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_ux_delivery/src/data/models/onboard_item.dart';
import 'package:ui_ux_delivery/src/utils/styles.dart';

import '../onboard_controller.dart';

class OnboardSlider extends ConsumerWidget {
  const OnboardSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final onboard = watch(onboardProvider);
    //onboard.afterFirstlayout();

    final controller = onboard.pageController;
    final items = onboard.items;

    return Expanded(
      child: PageView(
        controller: controller,
        physics: BouncingScrollPhysics(),
        children: List.generate(items.length, (index) {
          final onboardItem = items[index];
          return PageViewOnboardItem(onboardItem);
        }),
      ),
    );
  }
}

class PageViewOnboardItem extends StatelessWidget {
  final OnboardItem item;
  PageViewOnboardItem(this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Expanded(
            child: SvgPicture.asset(item.image),
          ),
          Text(
            item.title,
            textAlign: TextAlign.center,
            style: FontStyles.title,
          ),
          SizedBox(height: 20),
          Text(
            item.description,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
