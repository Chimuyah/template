// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/darwer.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/login.dart';
import 'package:get/get.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ProfileCard(),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage("images/006.png"),
            ),
            SizedBox(height: 16.0),
            Text(
              'Ninlawan Chomchuean',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Chimuya',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 16.0),
            Divider(),
            ListTile(
              title: Text('Email'),
              subtitle: Text('stu6412732114@sskru.ac.th'),
              leading: Icon(Icons.email),
            ),
            ListTile(
              title: Text('Phone'),
              subtitle: Text('+66 0640193975'),
              leading: Icon(Icons.phone),
            ),
            ListTile(
              title: Text('Location'),
              subtitle: Text('Sisaket,Thailand'),
              leading: Icon(Icons.location_on),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Get.to(() => LoginPage());
              },
              child: Text('Back to Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => MyHomePage());
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}