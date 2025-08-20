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
  double Price=0.0;
  double Totaltolaprice=0.0;
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
          FloatingActionButton(onPressed: (){
            double tolaprice=double.parse(tolapriceController.text);
            double tolaquantity=double.parse(tolaquantityController.text);
            double gramquantity=double.parse(gramquantityCotroller.text);

            double Totaltolaprice=tolaprice*tolaquantity;

            double pricepergram=tolaprice/12;

            double totalgramprice=pricepergram*gramquantity;

            Price=Totaltolaprice+totalgramprice;
            setState(() {

            });
          },child: Text("Calculate",style: TextStyle(color: Colors.orange,fontSize: 13),),backgroundColor: Colors.black,),
          SizedBox(height: 20,),
          Text("Total Price=$Price"),
          Text("Total tola price=$Totaltolaprice"),
        ],
        ),
      ),
    );
  }
}
