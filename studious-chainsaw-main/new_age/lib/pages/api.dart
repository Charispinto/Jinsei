import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:new_age/pages/Landing_page.dart';
import 'package:new_age/pages/api2.dart';
import 'package:new_age/pages/maptest_page.dart';
import 'package:new_age/widgets/widgets.dart';
// api to get the data form open wearther about the wind speed



class ApiSerivce extends StatefulWidget {
  late  double lat;
  late double lon;

  ApiSerivce({super.key,required double lat,required double lon}){    
    this.lat = lat;
    this.lon = lon;    
  }

  @override
  State<ApiSerivce> createState() => _ApiSerivceState();
}

class _ApiSerivceState extends State<ApiSerivce> {  

Future<String?> getData() async{
  var value = await get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=${widget.lat}&lon=${widget.lon}&appid=572880e65ae7a18ea7d56b806580c4c4"));
  var data = jsonDecode(value.body);  
  var val = data["wind"]["speed"];   
  return val.toString();
}

  
  String windspeed = "0.0"; 
  var temp;
  var speed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("api1 to get wind data")),

      body: Center(
        child: Column(children: [   
          const SizedBox(height: 50,),   
          //dont touch this code 
          Text("$windspeed m/s",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60,
            color: Colors.amber
          ),
          ),

          const SizedBox(height: 50,),

          Container(
            child: TextButton(onPressed: () async{
              temp = await getData();
              windspeed = temp.toString() ;
             print('$windspeed');
             setState(() {
               windspeed;
             });
            }, child: Text("get wind speed")),
          ), 
      
         
      
          
          //dont touch this code
          TextButton(onPressed: (){
           nextScreenReplace(context, LandingPage());
          },
           child: Text("return back to map page"),
           ),
      
          //don't touch this code
          TextButton(onPressed: (){
           speed = double.parse("$windspeed");
           nextScreenReplace(context, MyWidget(windspeed: speed));
          },
           child: Text('predict energy generation'))
        ]
        ),
      ),
    );
  }
}


//  Container(
//         child: TextButton(
//           onPressed: () async {                   
//             temp = await getData();
//             // the api is called and windspeed get get the value of windspeed of any particular place
//             windspeed = temp.toString();
//             print('$windspeed');
//           },
//           child: Container(
//             child: Text("get wind daata"),            
//           ),
//         ),
//       ),
//     );