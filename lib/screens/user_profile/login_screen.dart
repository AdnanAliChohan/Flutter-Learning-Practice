import 'package:flutter/material.dart';
import 'package:flutter_world/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = "";
  bool changeBtn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
                // height: 500,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeBtn = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                        setState(() {
                          changeBtn = false;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeBtn ? 60 : 150,
                        height: 60,
                        alignment: Alignment.center,
                        child: changeBtn
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeBtn ? 60 : 6)),
                      ),
                    ),

                    // ElevatedButton(
                    //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     },
                    //     child: Text("Login"))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
