import 'package:flutter/material.dart';
import 'package:lion_love/pages/home.dart';
import 'package:lion_love/routes.dart';

 class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color:Colors.white,
        child:SingleChildScrollView(
          child: Column(
            children:[
              // Image.asset("assets/images/login_image.png",
              // fit:BoxFit.cover,
              // ),
              Text(
                "USER SETTING",
                style:TextStyle(
                // fontsize:24,
                fontWeight:FontWeight.bold
              )
              ),
              SizedBox(
                height:40.0,
              ),
                Padding(
                padding: const EdgeInsets.symmetric(
                vertical: 16.0, horizontal: 32.0),
                child: Column(
                children: [
                TextFormField(
                obscureText:true,
                decoration:InputDecoration(
                    hintText:"Name",
                    labelText:"Name"
                ),
              ),
                TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                hintText: "Gender",
                labelText: "Gender",
                ),
    ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Hobbies",
                      labelText: "Hobbies",
                    ),
                  ),
                ]),
    ),

              SizedBox(
            height:40.0,
            ),
                InkWell(
                onTap: () async {
                    setState(() {
                    changeButton = true;
                     }
                     );
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                    child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton ? Icon(
                          Icons.done,
                          color: Colors.white,
                          )
                          : Text(
                        "Login",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                        ),
                decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius:
                BorderRadius.circular(changeButton ? 50 : 8),
                ),
                ),
                ),

  ]
          ),
        )
        );
      }
}
