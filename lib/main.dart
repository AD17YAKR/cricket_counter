import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'facecard.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(new MaterialApp(home: facecard()));
}
