import 'package:desimart/forget.dart';
import 'package:desimart/screen2/navigation.dart';
//import 'package:desimart/sign.dart';
import 'package:desimart/signup.dart';
import 'package:desimart/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  void login() {
    _auth
        .signInWithEmailAndPassword(
            email: emailcontroller.text.toString(),
            password: passwordcontroller.text.toString())
        .then((value) {
      Utils().toastmessage(value.user!.email.toString());
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Navigation()));
    }).onError((error, stackTrace) {
      Utils().toastmessage(error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        // Makes the body scrollable
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets//Group.png'),
            ),
            SizedBox(
              height: 82,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Loging',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 26),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Enter your emails and password',
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Color(0xff7C7C7C)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Email',
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Color(0xff7C7C7C)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 2,
                                    spreadRadius: 2),
                              ],
                            ),
                            child: TextFormField(
                              controller: emailcontroller,
                              decoration: InputDecoration(
                                hintText: 'Enter your email',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter an email";
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Password',
                              style: GoogleFonts.poppins(
                                  fontSize: 15, color: Color(0xff7C7C7C)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      blurRadius: 2,
                                      spreadRadius: 2)
                                ]),
                            child: TextFormField(
                              obscureText: true,
                              controller: passwordcontroller,
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.visibility_off),
                                  hintText: 'Enter your password',
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 1)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2))),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter a password";
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Forget()));
                        },
                        child: Text(
                          'Forgot password?',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Color(0xff181725)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height *
                          0.08, // 8% of screen height
                      width: MediaQuery.of(context).size.width *
                          0.9, // 90% of screen width
                      decoration: BoxDecoration(
                          color: Color(0xff53B175),
                          borderRadius: BorderRadius.circular(19)),
                      child: TextButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            login();
                          }
                        },
                        child: Text(
                          'Log In',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xffFFF9FF),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()));
                          },
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.poppins(
                                color: Color(0xff53B175),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
