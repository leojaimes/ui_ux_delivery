import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_ux_delivery/src/ui/common/widgets/input_text.dart';
import 'package:ui_ux_delivery/src/ui/common/widgets/rounded_button.dart';
import 'package:ui_ux_delivery/src/ui/pages/login/login_controller.dart';

import 'package:ui_ux_delivery/src/utils/styles.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context  ) {
    
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 340),
      child: Column(
        children: [
          InputText(
            prefixIcon: Icon(Icons.email_outlined),
            keyboardType: TextInputType.emailAddress,
            validator: (text) {
              bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(text);
              if (emailValid) return null;
              return "Invalid email";
            },
            labelText: "Email",
            textInputAction: TextInputAction.next,
            onChanged: context.read(loginProvider).emailChanged ,
          ),
          SizedBox(height: 20),
          InputText(
            prefixIcon: Icon(Icons.lock_outline),
            obscureText: true,
            labelText: "Password",
            textInputAction: TextInputAction.send,
            onChanged: context.read(loginProvider).passwordChanged,
            onSubmitted: (value) {},
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CupertinoButton(
              child: Text(
                "Forgot Password",
                style: FontStyles.regular,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 20),
          RoundedButton(
            onPressed: () {
              context.read(loginProvider).submit();
            },
            label: "Login",
            padding: EdgeInsets.symmetric(vertical: 9, horizontal: 40),
            fullWidth: false,
          ),
        ],
      ),
    );
  }
}
