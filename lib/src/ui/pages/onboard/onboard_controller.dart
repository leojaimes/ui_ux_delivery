import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show ChangeNotifierProvider;
import 'package:ui_ux_delivery/src/data/models/onboard_item.dart';

class OnboardController extends ChangeNotifier {
  final List<OnboardItem> items = [
    OnboardItem(
      image: "assets/pages/onboard/slider-1.svg",
      title: "Lorem ipsum dolor sit amet",
      description:
          "quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
    ),
    OnboardItem(
      image: "assets/pages/onboard/slider-2.svg",
      title: "Excepteur sint occaecat cupidatat",
      description:
          "non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
    ),
    OnboardItem(
      image: "assets/pages/onboard/slider-3.svg",
      title: "Omet justo donec enim diam vulputate",
      description:
          "Ut placerat orci nulla pellentesque. Aliquet nec ullamcorper sit amet risus",
    )
  ];
  final PageController pageController = PageController(initialPage: 0, keepPage: false);
  double? _currentPage = 0;
  double? get currentPage => _currentPage;

  void afterFirstlayout() {
    pageController.addListener(() {
      final double? page = pageController.page;
   
      _currentPage = page;
      print('$_currentPage');
      notifyListeners();
      // if (page % 1 == 0 && _currentPage != page) {
      //   _currentPage = page.toInt();
      //   notifyListeners();
      //   print("current page ${pageController.page}");
      // }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

final onboardProvider = ChangeNotifierProvider.autoDispose<OnboardController>(
    (ref) => OnboardController()..afterFirstlayout());
//https://www.youtube.com/watch?v=GVspNESSess&t=565s