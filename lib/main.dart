  import 'package:flutter/material.dart';
  class  BMI_Screen extends StatefulWidget {

    @override
    State<BMI_Screen> createState() => _BMI_Screen_State();
  }

  class _BMI_Screen_State extends State<BMI_Screen> {

    double value1=1;
    double value2=5;
    double value3=50;

    @override
    Widget build(BuildContext context) {

      return(SafeArea(child:
        Scaffold(
           backgroundColor: Colors.white,
          body:SingleChildScrollView(child:Center(
          child:Column(
       children:[
        Container(
      height: 200,
       width:365,
       alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.shade700,
      boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
      blurRadius: 15,
        spreadRadius: 5,
        offset: Offset(0, 3),
      )
      ],
      borderRadius: BorderRadius.only(bottomRight:Radius.circular(20),bottomLeft: Radius.circular(20),),
  ),
  child:Container(
  child:Text("BMI",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40),),
  decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(20),),
   height: 100,
   width: 100,
  alignment: Alignment.center,
  )),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
           child: Align(
             alignment: Alignment.topLeft, // Align the image to the top-left
             child: Image.asset(
               "assets/images/bmi_logo.png",
               height: 100,
               width: 150,
             ),
           ),
         ),

  Padding(padding:EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  child:Align(child:
  Text("Age Slider",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black ),),
    alignment: Alignment.centerLeft,
  )),
        SizedBox(child:
        Slider(
          value: value1,
          divisions: 99,
          min: 1,
          max: 100,
          label: '${value1.round()} years',
          onChanged: (newValue) {
            setState(() {
              value1 = newValue;
            });
          },
          activeColor: Colors.grey.shade700,
          inactiveColor: Colors.teal[200],),
        height: 30,),

         Text(
             '${value1.round()} years',
           style: TextStyle(
             fontSize: 18,
             fontWeight: FontWeight.bold,
             color: Colors.black,
           ),
         ),


         Padding(padding:EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child:Align(child: Text("Weight Slider",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              alignment: Alignment.centerLeft,
            )),

        SizedBox(child: Slider(
          value: value2,
          divisions: 149,
          min: 5,
          max: 150,
          label: '${value2.toStringAsFixed(2)} kg',
          onChanged: (newValue) {
            setState(() {
              value2 = newValue;
            });
          },
          activeColor: Colors.grey.shade700,
          inactiveColor: Colors.teal[200],),
          height: 30,),

         Text(
           '${value2.toStringAsFixed(2)} kg',
           style: TextStyle(
             fontSize: 18,
             fontWeight: FontWeight.bold,
             color: Colors.black,
           ),
         ),

        Padding(padding:EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child:Align(child: Text("Height Slider",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                alignment: Alignment.centerLeft,
            )),

        SizedBox(child: Slider(
          value: value3,
          divisions: 249,
          min: 50,
          max: 250,
          label: '${value3.toStringAsFixed(2)} cm',
          onChanged: (newValue) {
            setState(() {
              value3 = newValue;
            });
          },
          activeColor: Colors.grey.shade700,
          inactiveColor: Colors.teal[200],),
          height: 30,),

        Text(
          '${value3.toStringAsFixed(2)} cm',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            child: Text(
            "Calculate",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
            onPressed: () {
              //calculate height in meters
              double heightInMeters=value3/100;
              //calculate BMI
              double BMI_value=value2/(heightInMeters*heightInMeters);

              //category according to BMI Number

              String category;
              if(BMI_value>=30) {
                category = "Obesity";
              }
              else if (BMI_value >= 25) {
                category = "Overweight";
              } else if (BMI_value >= 18.5) {
                category = "Normal weight";
              } else {
                category = "Underweight";
              }

              showDialog(context: context, builder: (context){
                return  AlertDialog(
                  title: Text("Your BMI: ${BMI_value.toStringAsFixed(2)}",
                    style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),

                  content: Text("Category: ${category}",style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold,),),

                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child:
                    Text("OK",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),),
                 ],
                );
              });
            },
          ),
        ),
      ]
  ))
  ),)
      ));
    }
  }

  void main() {
    runApp(MaterialApp(
        theme: ThemeData(
          // Define the default font family.
          fontFamily: 'Poppins',
          // Customize text themes.
          textTheme: TextTheme(
            headlineSmall: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            headlineMedium: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodySmall: TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
          ),
          // Customize ElevatedButton theme to use Poppins.
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              textStyle: TextStyle(fontFamily: 'Poppins'),
            ),
          ),
        ),
      title:"BMI Calculator",
      debugShowCheckedModeBanner: false,
    home: BMI_Screen()
    ));
  }