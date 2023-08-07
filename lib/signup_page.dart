import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:practice/login_page.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var formkey = GlobalKey<FormState>();
  bool passvisibility1 = true;
  bool passvisibility2 = true;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: formkey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 100, right: 100, top: 100),
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Text(
                  "Create an Account, It's free",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email ID",
                        prefixIcon: Icon(Icons.contact_mail_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                    validator: (username) {
                      if (username!.isEmpty || !username.contains("@")) {
                        return "Fields are empty or Invalid";
                      } else {
                        return null;
                      }
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: passvisibility1,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passvisibility1 == true) {
                                passvisibility1 = false;
                              } else {
                                passvisibility1 = true;
                              }
                            });
                          },
                          icon: Icon(passvisibility1 == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                  validator: (pass) {
                    password = pass;

                    if (pass!.isEmpty || pass.length < 6) {
                      return "Fields are empty or Password length must be greaterthan 6";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: passvisibility2,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passvisibility2 == true) {
                                passvisibility2 = false;
                              } else {
                                passvisibility2 = true;
                              }
                            });
                          },
                          icon: Icon(passvisibility2 == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                  validator: (cpass) {
                    if (cpass!.isEmpty || cpass != password) {
                      return "Fields are empty or Password length must be greaterthan 6";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  } else {
                    Fluttertoast.showToast(
                        msg: "Invalid Username or Password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: const Text("Do you have an account ? Login"))
            ],
          )),
    );
  }
}
