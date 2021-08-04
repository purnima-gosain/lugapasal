import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/home.dart';
import './components/sign_in/forget.dart';
import './components/sign_in/signup.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luga Pasal'),
        backgroundColor: Colors.teal[900],
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email address';
                    }
                    return null;
                  },
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email Address',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextFormField(
                  validator: (String arg) {
                    if (arg.length <= 6 || arg.isEmpty) {
                      return 'Please enter minimum 7 charachters';
                    }
                    return null;
                  },
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(primary: Colors.teal[900]),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Forget()));
                },
                child: Text('Forgot Password'),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {
                    if (_formkey.currentState.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          (SnackBar(content: Text('Successfully logged in!'))));
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.teal[900]),
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Text('Does not have account?'),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.teal,
                        textStyle: TextStyle(fontSize: 20),
                      ),
                      child: Text(
                        'Sign up',

                        //
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
