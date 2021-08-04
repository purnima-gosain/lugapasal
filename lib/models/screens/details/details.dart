import 'package:flutter/material.dart';
import 'package:my_app/models/product.dart';
import 'package:my_app/models/screens/details/components/body.dart';

class DetailsPage extends StatelessWidget {
  final Product product;

  const DetailsPage({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      appBar: buildAppBar(),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Luga Pasal'),
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
    );
  }
}
