import 'package:flutter/material.dart';
import 'package:practice_app/main.dart';
import 'package:practice_app/my%20routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool tapped=false ;
  final _formkey= GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if(_formkey.currentState!.validate()){

    setState(() {
      tapped = !tapped;
    });

    await Future.delayed(const Duration(seconds: 1));
    await Navigator.of(context).pushNamed(MyRoutes.home);
    setState(() {
      tapped=false;

    });}
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('images/launcher_icon.png'),
            Text("Welcome ${name}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username",

              ),
              validator: (val) {
                if (val=="" ||val == null) {
                  return "Username cannot be empty";
                }

              },
              onChanged: (value) {
                name = value;
                setState(() {});
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter Password", labelText: "Password"),
              validator: (value) {
                if(value==null||value.isEmpty){
                  return "Password can't be empty";
                }
                else if (value.length<6) return "Password has to be 6 digits/letters";
                return null;

              },

            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () =>
                //Navigator.of(context).pushNamed(MyRoutes.home);
                moveToHome(context),


              child: AnimatedContainer(

                duration: Duration(seconds: 1),
                width: tapped ? 50.0:100.0,
                height: 50.0,
                alignment: Alignment.center,

                child: tapped ?Icon(Icons.done):  Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold,),
                ),
                decoration: BoxDecoration(


                  color: Colors.red[200],
                  shape: !tapped ? BoxShape.rectangle:BoxShape.circle,

                ),
              ),

            )
          ],
        ),
      ),
    ));
  }
}
