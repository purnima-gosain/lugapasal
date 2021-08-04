import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/world.png"),
            backgroundColor: Colors.teal[900],
          ),
          Positioned(
            right: -10,
            bottom: 0,
            child: SizedBox(
                height: 46,
                width: 46,
                child: TextButton(
                  style: TextButton.styleFrom(
                    // visualDensity: EdgeInsets.zero,
                    primary: Colors.teal[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    "assets/icons/Camera Icon.svg",
                    color: Colors.black,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
