import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
 
class FloatingMyCartButton extends StatelessWidget {
  const FloatingMyCartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Stack(
      children: [
        FloatingActionButton(
          child: SvgPicture.asset(
            'assets/pages/home/cart.svg',
            width: 30,
            color: Colors.white,
          ),
          onPressed: () {
         
          },
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              " cart.length ",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
