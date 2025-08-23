import'package:flutter/material.dart';
import 'package:screens/Icon Button.dart';
import 'package:screens/counterapp.dart';
import 'package:screens/goldprice.dart';
import 'package:screens/screen.dart';
import 'package:screens/textfield.dart';
void main()
{
runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Goldapp(),
    );
  }
}
