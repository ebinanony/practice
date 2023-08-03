import 'package:flutter/material.dart';
import 'package:practice/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 5));

    // Replace the below line with the code to navigate to your desired screen.
    // For example, you can use Navigator.pushReplacement() to navigate to the main screen.
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/instasplash.gif"),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
