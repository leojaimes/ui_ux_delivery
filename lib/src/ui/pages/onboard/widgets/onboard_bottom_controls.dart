import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_ux_delivery/src/ui/routes/routes.dart';

import 'package:ui_ux_delivery/src/utils/colors.dart';
import 'package:ui_ux_delivery/src/utils/styles.dart';
import '../onboard_controller.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnboardBottomControls extends StatelessWidget {
  const OnboardBottomControls({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _Dots(),
          _ButtonNext(),
        ],
      ),
    );
  }
}

class _ButtonNext extends ConsumerWidget {
  const _ButtonNext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final onboard = watch(onboardProvider);
    final pageController = onboard.pageController;
    final maxLength = onboard.items.length;
    final currentPage = onboard.currentPage;

    bool isEnd = currentPage! % 1 == 0 && currentPage == 2;

    return CupertinoButton(
      child: Text(
        isEnd ? "Get Started" : "Next",
        style: FontStyles.normal.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      onPressed: () {
        if (currentPage == 2) {
           Navigator.pushReplacementNamed(context, Routes.WELCOME);
        } else {
          pageController.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        }
      },
      color: primaryColor,
      borderRadius: BorderRadius.circular(30),
    );
  }
}

class _Dots extends ConsumerWidget {
  const _Dots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final onboard = watch(onboardProvider);
    final items = onboard.items;
    final currentPage = onboard.currentPage;
    return DotsIndicator(
      dotsCount: items.length,
      position: currentPage!,
      decorator: DotsDecorator(
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        color: Colors.grey.withOpacity(0.4),
        activeColor: primaryColor,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
    /*List.generate(
          items.length,
          (index) => Container(
                margin: EdgeInsets.only(right: 10),
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 3,
                        color: currentPage == index
                            ? primaryColor
                            : Colors.white),
                    color: Colors.grey.withOpacity(0.3),
                    shape: BoxShape.circle),
              ))*/
  }
}
