import 'package:flutter/material.dart';
import 'package:ui_ux_delivery/src/ui/pages/home/widgets/home_bottom_bar.dart';
import 'package:ui_ux_delivery/src/ui/pages/home/widgets/my_cart_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: HomeBottomBar(),
      floatingActionButton: FloatingMyCartButton(),
      body: SafeArea(
        child: Center(
          child: Text('home'),
        ),
      ),
    );
  }
}
