import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_ux_delivery/src/utils/colors.dart';

class InputText extends StatefulWidget {
  final Widget prefixIcon;
  final String? Function(String)? validator;
  final bool obscureText;
  final void Function(String) onChanged;
  final void Function(String)? onSubmitted;
  final TextInputAction textInputAction;
  final TextInputType? keyboardType;
  final String labelText;

  const InputText({
    Key? key,
    required this.prefixIcon,
    this.validator,
    this.obscureText = false,
    required this.onChanged,
    this.onSubmitted,
    required this.textInputAction,
    this.keyboardType,
    required this.labelText,
  }) : super(key: key);
  @override
  InputTextState createState() => InputTextState();
}

class InputTextState extends State<InputText> {
  bool _obscureText=false;
  String? _errorText;
 

  String? get errorText => _errorText;

  @override
  void initState() {
    _obscureText = widget.obscureText;
    super.initState();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  void _validate(String text) {
    if (widget.validator != null) {
      _errorText = widget.validator!(text);
      setState(() {});
    }
     
      widget.onChanged(text);
   
  }

  void _onVisibleChanged() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    
     return TextField(
      onChanged: _validate,
      obscureText: _obscureText,
      onSubmitted: widget.onSubmitted,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5),
        prefixIcon: widget.prefixIcon,
        labelText: widget.labelText,
        suffixIcon: widget.obscureText
            ? CupertinoButton(
                minSize: 25,
                padding: EdgeInsets.all(10),
                child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                onPressed: _onVisibleChanged,
              )
            : Icon(
                Icons.check_circle,
                color: _errorText == null ? primaryColor : Colors.grey,
              ),
      ),
    );
  }
}
