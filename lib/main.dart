import 'package:flutter/material.dart';
import 'package:internship/pages/HomePage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
      home: HomePage(),
    ));
