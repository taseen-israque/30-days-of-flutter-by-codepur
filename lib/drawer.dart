import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);
  final url="https://tutorsheba.com/images/1625662530.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: Container(
        constraints: BoxConstraints(maxHeight: 1000.00,minHeight: 50.00,maxWidth: 1000.00,minWidth: 50.00),

        color: Colors.deepPurple,
        child: ListView(

          children: [
            DrawerHeader(

                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(

                    margin: EdgeInsets.zero,
                    accountName: Text("Taseen"),
                    accountEmail: Text("taseenisraque@gmail.com"),
                    currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(url),minRadius: 100,maxRadius: 500.0,),

                )

            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text("Home",textScaleFactor: 1.3,),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text("Profile",textScaleFactor: 1.3,),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text("Mail Me ",textScaleFactor: 1.3,),
            ),
          ],
        ),
      ),
    );
  }
}

