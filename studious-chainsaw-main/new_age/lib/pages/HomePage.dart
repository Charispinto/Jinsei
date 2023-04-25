import 'package:flutter/material.dart';
import 'package:new_age/helper/helper_function.dart';
import 'package:new_age/pages/login_page.dart';
import 'package:new_age/pages/maptest_page.dart';
import 'package:new_age/pages/mil_info.dart';
import 'package:new_age/pages/profile_page.dart';
import '../widgets/widgets.dart';





class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Text(
                "Welcome, To WiseWind",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 27, 94, 32),
                  fontSize: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "     Wind Mills",
                style: TextStyle(
                    color: Color.fromARGB(255, 102, 187, 106),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: Align(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:  [
                   MillInfo(millname: "Vertical mill",millinfo: "this is the info page\nwhich has basic info\ngod just kill me" , imagePath: "assets/vaxi.gif", page: ProfilePage())
                  ],
                ),
              ),
            ),
          ],
        );
  }
}