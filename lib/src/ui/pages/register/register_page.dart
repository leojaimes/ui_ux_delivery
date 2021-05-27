import 'package:flutter/material.dart';
import 'package:ui_ux_delivery/src/utils/styles.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);
    final Size size = data.size;
    final padding = data.padding;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(
                minHeight: size.height - padding.top - padding.bottom,
              ),
              color: Colors.transparent,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Sign Up",
                    style: FontStyles.title.copyWith(
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Fill the details & create your account",
                    style: FontStyles.normal.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 65),
                  //RegisterForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
