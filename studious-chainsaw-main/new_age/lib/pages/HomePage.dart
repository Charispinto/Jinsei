import 'package:flutter/material.dart';
import 'package:new_age/helper/helper_function.dart';
import 'package:new_age/pages/login_page.dart';
import 'package:new_age/pages/maptest_page.dart';
import 'package:new_age/pages/mil_info.dart';
import 'package:new_age/pages/profile_page.dart';
import '../widgets/widgets.dart';
import 'package:lottie/lottie.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
              child: Card(
                color: Color(0xFF307A27),
                elevation: 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      end: Alignment.topLeft,
                      begin: Alignment(0.8, 1),
                      colors: <Color>[
                        Color(0xff19906A),
                        Color(0xff158368),
                        Color(0xff0D7066),
                        Color(0xff015A62),
                      ], // Gradient from https://learnui.design/tools/gradient-generator.html
                      tileMode: TileMode.mirror,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      // Add your navigation logic here
                    },
                    child: Container(
                      height: 200,
                      padding: const EdgeInsets.all(26),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Welcome Joywin!!',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Wind energy accounts for 6.59% of the power generated worldwide!',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'poppins',
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            child: Lottie.asset("assets/windmill-icon.json"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Container(
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Lets Analyse'),
                    const SizedBox(width: 10),
                    const Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 350,
              child: Align(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:  [
                    MillInfo(millname: "Vertical mill",millinfo: "this is the info page\nwhich has basic info\ngod just kill me" , imagePath: "assets/vaxi.gif", page: ProfilePage()),
                    MillInfo(millname: "Vertical mill",millinfo: "this is the info page\nwhich has basic info\ngod just kill me" , imagePath: "assets/vaxi.gif", page: ProfilePage()),
                    MillInfo(millname: "Vertical mill",millinfo: "this is the info page\nwhich has basic info\ngod just kill me" , imagePath: "assets/vaxi.gif", page: ProfilePage()),


            
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}