import 'package:flutter/material.dart';
var kblue = Color(0xFF121C50);
var kBigText = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.bold,
);
var kBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        offset: const Offset(3.0, 3.0),
        blurRadius: 5.0,
        spreadRadius: 2.0,
      ),
    ]
);