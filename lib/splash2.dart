import 'package:desimart/login.dart';
import 'package:desimart/screen2/navigation.dart';
import 'package:desimart/sign.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  final auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    final user = auth.currentUser;

    if (user != null) {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Navigation()));
      });
    } else {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
      });
    }
  }

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; // Get screen width
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          'assets/2.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
