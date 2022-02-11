import 'package:flutter/material.dart';

Widget customIconButton(
{
  required Widget child,
  required Function onTap,
  required Color splashColor,
  required Color backgroundColor,
  required BorderRadius radius
}
) {
  return InkWell(
    borderRadius: radius,
    splashColor: splashColor,
    onTap: onTap(),
    child: Ink(
      padding: EdgeInsets.all(15),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: radius,
      ),
      child: child,
    ),
  );
}