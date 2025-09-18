import 'package:flutter/material.dart';
class Goldapp extends StatefulWidget {
  const Goldapp({super.key});

  @override
  State<Goldapp> createState() => _GoldappState();
}

class _GoldappState extends State<Goldapp> {
  @override
  TextEditingController TolapriceController=TextEditingController();
  TextEditingController TolaQuantityController=TextEditingController();
  TextEditingController GramQuantityController=TextEditingController();
  TextEditingController RattiQuantityController=TextEditingController();
  String error="";
  double Total_Price=0.0;
  double TotalGramprice=0.0;
  double TotalRattiprice=0.0;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          TolapriceController.clear();
          TolaQuantityController.clear();
          GramQuantityController.clear();
          RattiQuantityController.clear();
          Total_Price=0;
          TotalGramprice=0;
          TotalRattiprice=0;
          setState(() {

          });
        },backgroundColor: Colors.orangeAccent,child: Icon(Icons.refresh,color: Colors.black,),),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Welcome To Gold Price Calculator",style: TextStyle(color: Colors.orangeAccent,fontSize: 30,fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.orangeAccent)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    controller: TolapriceController,
                    style: TextStyle(color:Colors.orangeAccent),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Tola Price",
                      hintStyle: TextStyle(color: Colors.orangeAccent)
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orangeAccent),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    controller: TolaQuantityController,
                    style: TextStyle(color: Colors.orangeAccent),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Tola Quantity",
                      hintStyle: TextStyle(color: Colors.orangeAccent)
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orangeAccent),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    controller: GramQuantityController,
                    style: TextStyle(color: Colors.orangeAccent),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Gram Quantity',
                      hintStyle: TextStyle(color: Colors.orangeAccent)
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10,),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orangeAccent),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    controller: RattiQuantityController,
                    style: TextStyle(color: Colors.orangeAccent),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Ratti Quantity',
                      hintStyle: TextStyle(color: Colors.orangeAccent)
                    ),
                  ),
                ),
              ),
              FloatingActionButton(onPressed: (){
                if(TolapriceController.text=='')
                  {
                    error="Tola Price must be enter";
                    setState(() {

                    });
                  }
                else
                error='';
                  {
                    if(TolaQuantityController.text=='')
                      {
                        TolaQuantityController.text='0';
                      }
                    if(GramQuantityController.text=='')
                      {
                        GramQuantityController.text='0';
                      }
                    if(RattiQuantityController.text=='')
                      {
                        RattiQuantityController.text='0';
                      }
                  }
                double tolaprice=double.parse(TolapriceController.text);
                double tolaquantity=double.parse(TolaQuantityController.text);
                double gramquantity=double.parse(GramQuantityController.text);
                double rattiquantity=double.parse(RattiQuantityController.text);

                double Totaltolaprice=tolaprice*tolaquantity;


                TotalGramprice=(tolaprice/12)*gramquantity;


                TotalRattiprice=(tolaprice/96)*rattiquantity;

                Total_Price=Totaltolaprice+TotalGramprice+TotalRattiprice;

                setState(() {

                });
              },
                child: Text("Calculate",style: TextStyle(color: Colors.orangeAccent,fontSize: 13),),backgroundColor: Colors.black,
              ),
              SizedBox(height: 20,),
              Text("Total Price= $Total_Price",style: TextStyle(color: Colors.orangeAccent),),
              SizedBox(height: 10,),
              Text("Total Gram Price= $TotalGramprice",style: TextStyle(color: Colors.orangeAccent),),
              SizedBox(height: 10,),
              Text("Total Ratti Price= $TotalRattiprice",style: TextStyle(color: Colors.orangeAccent),),
              SizedBox(height: 10,),
              Text("$error",style: TextStyle(color: Colors.red),),
              Text("Developed By: Ali Marjan",style: TextStyle(color: Colors.orangeAccent),),
              SizedBox(height: 35,),
            ],
          ),
        ),
      ),
    );
  }
}
