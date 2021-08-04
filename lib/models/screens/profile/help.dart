import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Help and support'),
          backgroundColor: Colors.teal[900],
        ),
        body: ListView(
          children: const <Widget>[
            Card(
              child: ListTile(
                title: Text('1.How can I login?'),
                subtitle: Text(
                    'Ans: You can simply enter username and password and click on login.'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('2.How can I make payment?'),
                subtitle: Text(
                    'Ans: You can make payment through different methods.'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('3.How can I order more than one product?'),
                subtitle: Text(
                    'Ans: You can increase quantity by clicking on plus icons'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('4.How can  I log out?'),
                subtitle: Text(
                    'Ans: You can logout by clicking on profile icon and select on logout.'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('5.How can  I get my order?'),
                subtitle: Text(
                    'Ans: You get notification after you product reach your location.'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('6.How can  I add my product on cart?'),
                subtitle: Text(
                    'Ans: You can add product to cart by clicking on cart icon.'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('7.How can  I log out?'),
                subtitle: Text(
                    'Ans: You can logout by clicking on profile icon and select on logout.'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('8.How can  I contact?'),
                subtitle: Text(
                    'Ans: You can contact us by calling in 98234560 number.'),
              ),
            ),
          ],
        ));
  }
}
