import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:practice/first_page.dart';
import 'package:practice/signup_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "ebin@gmail.com";
  String password = "1234";
  bool passwordvisibility = true;

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 100, right: 100, top: 100),
            child: Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Text(
              "Welcome back! Login with your credentials",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                prefixIcon: Icon(Icons.contact_mail_outlined),
                hintText: "Email ID",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
            child: TextFormField(
              controller: passcontroller,
              obscureText: passwordvisibility,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (passwordvisibility == true) {
                            passwordvisibility = false;
                          } else {
                            passwordvisibility = true;
                          }
                        });
                      },
                      icon: Icon(passwordvisibility == true
                          ? Icons.visibility_off_sharp
                          : Icons.visibility)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  prefixIcon: Icon(Icons.password),
                  hintText: "Password"),
            ),
          ),
          InkWell(
            onTap: () {
              if (email == emailcontroller.text &&
                  password == passcontroller.text) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => FirstPage()));

                emailcontroller.text = "";
                passcontroller.text = "";
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
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 200),
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignupPage()));
                },
                child: Text("Do you have an account? Sign Up")),
          ),
        ],
      ),
    ));
  }
}
