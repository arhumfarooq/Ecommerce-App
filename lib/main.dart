import 'package:desimart/forget.dart';
import 'package:desimart/login.dart';
//import 'package:desimart/practice/post.dart';
import 'package:desimart/screen2/cart.dart';
import 'package:desimart/screen2/checkout.dart';
import 'package:desimart/screen2/explore.dart';
import 'package:desimart/screen2/navigation.dart';
import 'package:desimart/splash1.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:desimart/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Firebase Initialization
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Correct Firebase Realtime Database URL Set
  // ye tum log chrdena nhi smjhna ye ismy dtatabase add kya he lkn wo billing mng rha he
  FirebaseDatabase.instance.databaseURL =
      "https://dumy-93766-default-rtdb.firebaseio.com";

  runApp(const MyApp());
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
