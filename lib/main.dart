import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttercrypto/dependency_injection.dart';
import 'home_page.dart';
import 'package:http/http.dart' as http;

void main() async {
  Injector.configure(Flavor.MOCK);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.teal),
      home: new HomePage(),
    );
  }
}
