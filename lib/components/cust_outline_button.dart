import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustOutlineBtn extends StatefulWidget {
  const CustOutlineBtn(
      {Key? key,
      required this.disabled,
      required this.onTap,
      required this.label})
      : super(key: key);

  final bool disabled;
  final void Function()? onTap;
  final String label;

  @override
  State<CustOutlineBtn> createState() => _CustOutlineBtnState();
}

class _CustOutlineBtnState extends State<CustOutlineBtn> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: widget.onTap,
      child: Text(widget.disabled ? widget.label : "hello"),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.grey;
          }
          return Colors.red;
        }),
        side: MaterialStateProperty.resolveWith((states) {
          Color _borderColor;
          if (states.contains(MaterialState.disabled)) {
            _borderColor = Colors.grey;
          } else if (states.contains(MaterialState.pressed)) {
            _borderColor = Colors.deepOrange;
          } else {
            _borderColor = Colors.red;
          }
          return BorderSide(color: _borderColor, width: 1);
        }),
      ),
    );
  }
}
