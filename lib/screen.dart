import 'package:flutter/material.dart';
class Buttonclass extends StatelessWidget {
  const Buttonclass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Arithmetic button screen",style:TextStyle(fontSize: 30) ,),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                child: Text("add"),
                onPressed: (){
                  int n1=20;
                  int n2=30;
                  int add=n1+n2;
                  print("Addition=$add");
                },
              ),
              TextButton(
                child: Text("Subtraction"),
                onPressed: (){
                  int n1=30;
                  int n2=40;
                  int sub=n2-n1;
                  print("Subtraction$sub");
                },
              ),
              TextButton(
                child: Text("Multiplication"),
                onPressed: (){
                  int n1=5;
                  int n2=10;
                  int mult=n1*n2;
                  print("Multiplication=$mult");
                },
              ),
              TextButton(
                child: Text("Division"),
                onPressed: (){
                  int n1=5;
                  int n2=10;
                  double div=n2/n1;
                  print("Division=$div");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
