// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/darwer.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:get/get.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "สวัสดีค่ะ",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 26,
                fontWeight: FontWeight.w900,
                height: 3.0,
              ),
            ),
            Image.network(
              "https://i.pinimg.com/originals/0c/49/4d/0c494db03ae6c6871c1f3ebe8709e891.jpg", // Replace with your image path
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(() => LoginPage()); // Navigate to the login page
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.login),
                  SizedBox(width: 8),
                  Text('Login'),
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.to(() => ProfileScreen()); // Navigate to the profile page
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.account_circle),
                  SizedBox(width: 8),
                  Text('Profile'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}