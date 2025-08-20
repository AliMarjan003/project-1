import'package:flutter/material.dart';

class countapp extends StatefulWidget
{
  const countapp({super.key});

  @override
  State<countapp> createState() => _countappState();
}
class _countappState extends State<countapp>
{
  int count=0;
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Welcome to the counter app"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 70,),
            Center(child: Text("$count",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),)),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: (){
                  count++;
                  setState(() {
                    
                  });
                },child: Icon(Icons.add,color: Colors.white,),backgroundColor: Colors.blue,),
                FloatingActionButton(onPressed: (){
                  if(count!=0)
                    {
                      count--;
                      setState(() {

                      });
                    }
                },child: Icon(Icons.remove,color: Colors.white,),backgroundColor: Colors.blue,),
                FloatingActionButton(onPressed: (){
                  count=0;
                  setState(() {

                  });
                },child: Icon(Icons.refresh,color: Colors.white,),backgroundColor: Colors.blue,),
              ],
            )
          ],
        ),
      ),
    );
  }
}