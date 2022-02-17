import 'package:flutter/material.dart';

Widget customBuyButton () {
  return InkWell(
    borderRadius: BorderRadius.circular(12),
    onTap: () {},
    splashColor: Colors.white,
    child: Container(
      width: 60,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          "Buy",
          style: TextStyle(
            fontFamily: "Poppins",
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}