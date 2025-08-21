import 'package:flutter/material.dart';
class Goldprice extends StatefulWidget {
  const Goldprice({super.key});

  @override
  State<Goldprice> createState() => _GoldpriceState();
}

class _GoldpriceState extends State<Goldprice> {
  TextEditingController tolapriceController=TextEditingController();
  TextEditingController tolaquantityController=TextEditingController();
  TextEditingController gramquantityCotroller=TextEditingController();
  TextEditingController rattiquantityController=TextEditingController();
  double Price=0.0;
  double Pricepergram=0.0;
  double Totalgramprice=0.0;
  double Rattipricepergram=0.0;
  double totalrattiprice=0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Gold Price Calculator",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 40),),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body:
        Column(children: [
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              controller: tolapriceController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter tola price',
                hintStyle: TextStyle(color: Colors.orange),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              controller: tolaquantityController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter tola quantity',
                hintStyle: TextStyle(color: Colors.orange),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              controller: gramquantityCotroller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter gram quantity',
                hintStyle: TextStyle(color: Colors.orange),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              controller: rattiquantityController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter ratti quantity',
                hintStyle: TextStyle(color: Colors.orange),
              ),
            ),
          ),
          FloatingActionButton(onPressed: (){
            
                double tolaprice=double.parse(tolapriceController.text);
                double tolaquantity=double.parse(tolaquantityController.text);
                double gramquantity=double.parse(gramquantityCotroller.text);
                double rattiquantity=double.parse(rattiquantityController.text);

                double Totaltolaprice=tolaprice*tolaquantity;

                Pricepergram=tolaprice/12;

                Totalgramprice=(tolaprice/12)*gramquantity;

                Rattipricepergram=tolaprice/96;

                totalrattiprice=(tolaprice/96)*rattiquantity;

                Price=Totaltolaprice+Totalgramprice+totalrattiprice;

                setState(() {

                });
          },
            child: Text("Calculate",style: TextStyle(color: Colors.orange,fontSize: 13),),backgroundColor: Colors.black,
          ),
          SizedBox(height: 20,),
          Text("Total Price=$Price"),
          SizedBox(height: 10,),
          Text("Pricepergram=$Pricepergram"),
          SizedBox(height: 10,),
          Text("Totalgramprice=$Totalgramprice"),
          SizedBox(height: 10,),
          Text("Rattipricepergram=$Rattipricepergram"),
          SizedBox(height: 10,),
          Text("totalrattiprice=$totalrattiprice")
        ],
        ),
      ),
    );
  }
}