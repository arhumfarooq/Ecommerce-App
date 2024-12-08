import 'dart:io';
import 'dart:ui_web';

import 'package:desimart/firebase_options.dart';

import 'package:desimart/login.dart';
import 'package:desimart/number.dart';
import 'package:desimart/screen2/beverages.dart';
import 'package:desimart/screen2/cart.dart';
import 'package:desimart/screen2/egg.dart';
import 'package:desimart/screen2/explore.dart';
import 'package:desimart/screen2/last.dart';
import 'package:desimart/screen2/mein2.dart';
import 'package:desimart/screen2/navigation.dart';
import 'package:desimart/splash1.dart';
import 'package:desimart/sign.dart';
import 'package:desimart/signup.dart';
import 'package:desimart/verify.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
// ...

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash1(),
    );
  }
}
