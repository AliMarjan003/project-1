import 'package:flutter/material.dart';
import 'package:screens/goldprice.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Create Your Account",style: TextStyle(color: Colors.orangeAccent,fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
           Container(
             decoration: BoxDecoration(
               border: Border.all(color: Colors.orangeAccent),
               borderRadius: BorderRadius.circular(10)
             ),
             child: Padding(
               padding: const EdgeInsets.all(5.0),
               child: TextFormField(
                 style: TextStyle(color: Colors.orangeAccent),
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   hintText:'Enter Your Email',
                   hintStyle: TextStyle(color: Colors.orangeAccent)
                 ),
               ),
             ),
           ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orangeAccent),
                borderRadius: BorderRadius.circular(10),
              ),
              child:Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.orangeAccent),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Your Password',
                    hintStyle: TextStyle(color: Colors.orangeAccent)
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orangeAccent),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.orangeAccent),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Confirm Your Password',
                    hintStyle: TextStyle(color: Colors.orangeAccent),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orangeAccent),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.orangeAccent),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Your Phone Number',
                    hintStyle: TextStyle(color: Colors.orangeAccent)
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orangeAccent),
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(onPressed: (){
                Navigator.push
                  (
                    context,MaterialPageRoute(builder: (context)
                    { return Goldapp();}) );
              },child: Text("Login",style: TextStyle(color: Colors.orangeAccent),), ),
            )
          ],
        ),
      ),
    );
  }
}
