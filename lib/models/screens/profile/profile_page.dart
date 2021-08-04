import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:my_app/models/screens/profile/body.dart';

class ProfilePage extends StatelessWidget {
  static String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    // Icon cusIcon = Icon(Icons.search);
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('Luga Pasal'),
        backgroundColor: Colors.teal[900],
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
