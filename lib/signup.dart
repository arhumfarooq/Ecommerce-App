import 'package:desimart/login.dart';
import 'package:desimart/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final namecontroller = TextEditingController();
  final _formkey2 = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    namecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Align(
              alignment: Alignment.center,
              child: Image.asset('assets//Group.png')),
          SizedBox(
            height: 82,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 26),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Enter your credentials to continue',
                    style: GoogleFonts.poppins(
                        fontSize: 15, color: Color(0xff7C7C7C)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Username',
                    style: GoogleFonts.poppins(
                        fontSize: 15, color: Color(0xff7C7C7C)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Form(
                      key: _formkey2,
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
                                      spreadRadius: 2)
                                ]),
                            child: TextFormField(
                              controller: namecontroller,
                              decoration: InputDecoration(
                                  hintText: 'Enter a username',
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
                                  return "Enter a username";
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
                              'Email',
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
                              controller: emailcontroller,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: 'Enter a email',
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
                                  return "Enter a email";
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
                              keyboardType: TextInputType.text,
                              controller: passwordcontroller,
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.visibility_off),
                                  hintText: 'Enter a password',
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
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'By continuing you agree to our',
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: Color(0xff7C7C7C)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Terms of Service',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Color(0xff53B175)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'and',
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: Color(0xff7C7C7C)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Privacy and policy.',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Color(0xff53B175)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 67,
                    width: 364,
                    decoration: BoxDecoration(
                        color: Color(0xff53B175),
                        borderRadius: BorderRadius.circular(19)),
                    child: TextButton(
                        onPressed: () {
                          if (_formkey2.currentState!.validate()) {
                            _auth
                                .createUserWithEmailAndPassword(
                              email: emailcontroller.text.toString(),
                              password: passwordcontroller.text.toString(),
                            )
                                .then((value) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                              setState(() {});
                            }).onError(
                              (error, stackTrace) {
                                Utils().toastmessage(error.toString());
                              },
                            );
                          }
                        },
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xffFFF9FF)),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                                color: Color(0xff53B175),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
