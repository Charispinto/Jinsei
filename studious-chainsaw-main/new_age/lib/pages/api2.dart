
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:new_age/pages/Landing_page.dart';
import 'package:new_age/pages/maptest_page.dart';
import 'package:new_age/widgets/widgets.dart';





// this is the function to get the data and give it to the ml model and gets a json response of the power generated 




class MyWidget extends StatefulWidget {
  late double windspeed;
   MyWidget({super.key, required double windspeed}){
  this.windspeed = windspeed;
  }

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {


Future<String?> getData() async {
  final response = await http.post(Uri.parse('http://10.0.2.2:5000/'),
      body: jsonEncode({"wind_speed": "${widget.windspeed}"}),
      headers: {'Content-Type': 'application/json'});
  if (response.statusCode == 200) {
    final responseJson = jsonDecode(response.body);   
    var newValue = responseJson['wind_speed'];
    print(newValue);
    newValue =  newValue.replaceAll(RegExp(r'[\[\]]'), '');  
    var sendBack = double.parse(newValue);
    return sendBack.toString();
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

String? energy = "energy value to be predicted";
var temp;


@override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ML pred page'),),
      body: Column(
        children: [
          const SizedBox(height: 50,),
          IconButton(onPressed: ()async{
          temp = await getData();
          energy = temp.toString();
          print('$energy');
          setState(() {
            energy;
          });
          },
           icon: Icon(Icons.mail)
          ),
          const SizedBox(height: 50,),
          Text('$energy'),

        const SizedBox(height: 50,),
        
        TextButton(onPressed: (){
          nextScreenReplace(context, LandingPage());
        }, child: Text('move to map'))        

        ],
      ),
    );
  }
}
















// String? windspeed = 'to be calculated'; 
// var data;
// var temp;
//     return Scaffold(      
//       appBar: AppBar(
//         title: const Text("api2 part") 
//         ),  

//       body: Column(
//         children: [

//         SizedBox(height: 50,),
//         TextButton(onPressed: () async{          
//           temp = await getData(); 
//           windspeed = temp.toString(); 
//           print('$windspeed');
//         setState(() {
//            windspeed;
//          });             
//         },
//          child: Text("get ml model prediction"),                
//         ),

//         SizedBox(height: 50,),

//         Container(
//           child: Text("$windspeed"),
//         ),
     

//         TextButton(onPressed: (){
//           nextScreenReplace(context, MapScreen());
//         },
//          child: Text("go back to the initial page")
//          )

//         ],
//         ),
//       );  