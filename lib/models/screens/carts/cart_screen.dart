import 'package:flutter/material.dart';
import 'package:my_app/home.dart';

import 'package:my_app/models/product.dart';

import 'package:my_app/models/screens/carts/payment.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key key, this.product}) : super(key: key);
  final Product product;

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int numOfItems = 1, count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          height: 45,
          width: 100,
          child: ElevatedButton(
            child: Text('Checkout'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Payment()));
            },
            style: ElevatedButton.styleFrom(primary: Colors.teal[900]),
          )),
      appBar: AppBar(
        title: Text('My Cart'),
        backgroundColor: Colors.teal[900],
        elevation: 0,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.search),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.notifications),
              )),
        ],
      ),
      body: Container(
        height: 140,
        width: double.infinity,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 130,
                    width: 140,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/jeans.png"),
                    )),
                  ),
                  Container(
                    height: 130,
                    width: 200,
                    child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Ladies Jeans"),
                          Text("Straight"),
                          Text(
                            "\$${234}",
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      return showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: Text("Delete"),
                          content:
                              Text("Are you sure you want to delete product?"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            new HomeScreen()));
                              },
                              child: Text(
                                "Yes",
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            new CartScreen()));
                              },
                              child: Text("No"),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.teal[900],
                        shape: BoxShape.circle,
                      ),
                      child: new Icon(
                        Icons.delete_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
