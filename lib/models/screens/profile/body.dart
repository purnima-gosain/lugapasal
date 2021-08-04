import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/login.dart';
import 'package:my_app/models/screens/profile/help.dart';
import 'package:my_app/models/screens/profile/profile_pic.dart';

class Body extends StatelessWidget {
  get bodyText1 => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        ProfileMenu(
          text: "My Account",
          icons: "assets/icons/User Icon.svg",
          press: () {},
        ),
        ProfileMenu(
          text: "Notifications",
          icons: "assets/icons/Bell.svg",
          press: () {},
        ),
        ProfileMenu(
          text: "Settings",
          icons: "assets/icons/Settings.svg",
          press: () {},
        ),
        ProfileMenu(
          text: "Help and support",
          icons: "assets/icons/Question mark.svg",
          press: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Help()));
          },
        ),
        ProfileMenu(
          text: "Log out",
          icons: "assets/icons/Log out.svg",
          press: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @override this.text,
    @override this.icons,
    @override this.press,
  }) : super(key: key);

  final String text, icons;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.grey[200],
            primary: Colors.black,
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icons,
              width: 22,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
              ),
            ),
            Icon(Icons.arrow_forward_ios)
            // style: Theme.of(context).textTheme,bodyText1
          ],
        ),
      ),
    );
  }
}
