import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_ux_delivery/src/ui/pages/home/widgets/home_indicator.dart';
import 'package:ui_ux_delivery/src/utils/colors.dart';
 

class HomeBottomBar extends StatelessWidget {
  HomeBottomBar({Key? key}) : super(key: key);

  final List<_BottomBarItem> _items = [
    _BottomBarItem(
      icon: 'assets/pages/home/home.svg',
      label: 'Home',
    ),
    _BottomBarItem(
      icon: 'assets/pages/home/favorite.svg',
      label: 'Favorites',
    ),
    _BottomBarItem(
      icon: 'assets/pages/home/bell.svg',
      label: 'Notifications',
    ),
    _BottomBarItem(
      icon: 'assets/pages/home/avatar.svg',
      label: 'More',
    )
  ];

  @override
  Widget build(BuildContext context) {
  
    return Container(
      child: SafeArea(
        top: false,
         child: Center(child: Text('Tab bar ')),
      ),
    );
  }
}

class BottomBarTab extends StatelessWidget {
  const BottomBarTab({
    Key? key ,
    required this.item,
    required this.isActive,
  }) : super(key: key);

  final _BottomBarItem item;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final Color color = this.isActive ? primaryColor : Colors.black;
    return Tab(
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          item.icon,
          color: color,
        ),
      ),
    );
  }
}

class _BottomBarItem {
  final String icon, label;

  _BottomBarItem({
    required this.icon,
    required this.label,
  });
}
