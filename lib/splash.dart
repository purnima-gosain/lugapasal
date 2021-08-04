import 'package:flutter/material.dart';
import 'package:my_app/login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    // var assetsImage = new AssetImage(
    //     'assets/images/logo1.jpg'); //<- Creates an object that fetches an image.
    // var image = new Image(
    //     image: assetsImage,
    //     fit: BoxFit.cover); //<- Creates a widget that displays an image.
    //  Container(
    //     decoration:
    //         BoxDecoration(color: Colors.teal[900], shape: BoxShape.rectangle),
    //     child: Image.asset('assets/images/logo1.jpg'),
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        // decoration:
        //     BoxDecoration(color: Colors.teal[900], shape: BoxShape.rectangle),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Colors.teal[900], // Set border color
              width: 8.0), // Set border width
          borderRadius: BorderRadius.all(
              Radius.circular(5.0)), // Set rounded corner radius
          // boxShadow: [
          //   BoxShadow(
          //       blurRadius: 10, color: Colors.black, offset: Offset(1, 3))
          // ] // Make rounded corner of border
        ),
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/images/logo1.jpg',
                // height: 500,
                // width: 200,
                alignment: Alignment.topCenter,
              ),
            ),
            Text(
              'Luga Hamro, Choice Tapaiko',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.teal[900],
                  fontSize: 15,
                  backgroundColor: Colors.white),
            ),
            SizedBox(height: 100),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text('Get Started>>'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.teal[900]),
              ),
            ), // for creating space between children of column.
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
