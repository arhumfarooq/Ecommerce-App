import 'package:desimart/sign.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Sign()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/2.png'),
    );
  }
}
