import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: MyProfile(),
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(
              letterSpacing: 2.0,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 250,
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Image.asset(
                'images/profile.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, right: 0, top: 10),
              child: const Text(
                'Thodsaphon Chuennwngsap',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 25,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left:10,right: 5),
                  child: Icon(
                    Icons.email,
                    size: 25,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  '6240011010@psu.ac.th',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
             Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left:10,right: 5),
                  child: Icon(
                    Icons.phone,
                    size: 25,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  '061-2485906',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
