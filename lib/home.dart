import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_app/body.dart';
import 'package:my_app/models/screens/carts/cart_screen.dart';
import 'package:my_app/models/screens/profile/profile_page.dart';
import './body.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("Luga Pasal");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cusSearchBar,
        backgroundColor: Colors.teal[900],
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                if (this.cusIcon.icon == Icons.search) {
                  this.cusIcon = Icon(Icons.close);

                  this.cusSearchBar = new TextField(
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                  );
                } else {}
              });
            },
            icon: cusIcon,
          ),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.notifications),
              )),
        ],
      ),
      body: Body(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 80.5,
              child: DrawerHeader(
                child: Text(
                  "Luga Pasal",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                decoration: BoxDecoration(color: Colors.teal[900]),
                margin: EdgeInsets.all(0.5),
                padding: EdgeInsets.all(0.5),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favourites'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My cart'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
