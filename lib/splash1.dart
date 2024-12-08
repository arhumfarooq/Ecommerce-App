import 'package:desimart/splash2.dart';

import 'package:flutter/material.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Splash2()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/1.png'),
    );
  }
}
