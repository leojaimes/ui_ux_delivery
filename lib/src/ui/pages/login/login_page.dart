import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_ux_delivery/src/ui/pages/login/widgets/login_form.dart';
import 'package:ui_ux_delivery/src/ui/pages/login/widgets/social_login.dart';
import 'package:ui_ux_delivery/src/utils/styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context   ) {
    final MediaQueryData data = MediaQuery.of(context);
    final Size size = data.size;
    final padding = data.padding;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),//para que se desenfoque al dar tap en la pantalla
            child: Container(
              width: double.infinity,
              height: size.height - padding.top - padding.bottom,
              color: Colors.transparent,//para que se aplique el unfocus correctamente...
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Welcome Back!",
                    style: FontStyles.title.copyWith(
                      fontSize: 22,
                    ),
                  ),
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/pages/welcome/welcome.svg',
                    ),
                  ),
                  LoginForm(),
                  SocialLogin(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
