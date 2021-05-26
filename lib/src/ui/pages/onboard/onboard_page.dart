import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_ux_delivery/src/ui/pages/onboard/widgets/onboard_bottom_controls.dart';
import 'package:ui_ux_delivery/src/ui/pages/onboard/widgets/onboard_slider.dart';
 

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Scaffold(
        body: Container(
            width: double.infinity,
            child: Column(
              children: [
                OnboardSlider(),
                OnboardBottomControls(),

                ///
              ],
            )),
      ),
    );
  }
}


