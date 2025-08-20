import 'package:flutter/material.dart';
class Buttonpressed extends StatelessWidget {
  const Buttonpressed({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){print("Icon button pressed in appbar");}, icon:Icon(Icons.add_circle)),
          ],
        ),
        body:
          Column(
            children: [
              IconButton(
                  onPressed:(){print("Icon button preesed");}, icon: Icon(Icons.add)),
              CircleAvatar(
                child: IconButton(onPressed: (){print("pressed in circle");}, icon: Icon(Icons.settings)),),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(onPressed: (){print("pressed in container");}, icon: Icon(Icons.add)),
                ),
              ),
              SizedBox(height: 20,),
              FloatingActionButton(onPressed: (){print("Button pressed in FloatingActionButton");
              },child: Icon(Icons.backspace),)
            ],
            
          ),
      ),
    );
  }
}
