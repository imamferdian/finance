import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/foto1.png'),
            Text(
              'Welcome Michael!',
              style: TextStyle(
                fontSize: 42.0,
                fontFamily: 'Gilroy',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              'It seem everything went well and your app is ready to work with you',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.0, fontFamily: 'Inter', color: Colors.white),
            ),
            SizedBox(
              height: 56.0,
              width: 185.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Started'),
            ),
          ],
        ),
      ),
    );
  }
}
