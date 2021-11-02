import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget TextAssign(String s, double size) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(top: 12, left: 9.0, bottom: 3),
      child: Text(
        "$s",
        style: TextStyle(
          fontSize: size,
          color: Colors.black87,
        ),
      ),
    ),
  );
}
