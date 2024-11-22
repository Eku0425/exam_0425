import 'dart:async';

import 'package:exam_0425/view/singup.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      Duration(seconds: 5),
      (timer) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SignupScreen(),
              // AuthServices.authServices.firebaseAuth.currentUser == null
              //     ? SignupScreen()
              //     : HomeScreen(),
            ));
      },
    );

    return Scaffold(
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWS2j0V5LJ5K8ulXwTHGRjafYYTUiTuxnLtJ6tQgBG6FZ3DCPzob1sW03BTB9y2zukmZ0&usqp=CAU'),
        ),
      ),
    );
  }
}
