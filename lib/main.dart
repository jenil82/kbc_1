import 'dart:js';
import 'package:flutter/material.dart';
import 'hom.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Hom(),
      },
    ),
  );
}
