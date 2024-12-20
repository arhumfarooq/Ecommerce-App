import 'package:desimart/signup.dart';
import 'package:desimart/utils/utils.dart';
import 'package:desimart/verify.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  bool loading = false;
  final phonecontroller = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  void dispose() {
    phonecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter your mobile number',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                      color: Color(0xff181725)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Mobile Number',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xff7C7C7C)),
                ),
              ),
              TextFormField(
                controller: phonecontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: '000000000',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  prefix: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/flag.png', // Use a local asset
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 10),
                        Text(
                          '+92', // Country code
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () async {
                        if (phonecontroller.text.length < 10) {
                          Utils().toastmessage('Invalid phone number');
                          return;
                        }

                        setState(() {
                          loading = true;
                        });

                        try {
                          await auth.verifyPhoneNumber(
                            phoneNumber: '+92${phonecontroller.text}',
                            verificationCompleted: (_) {
                              setState(() {
                                loading = false;
                              });
                            },
                            verificationFailed: (e) {
                              Utils().toastmessage(e.toString());
                              setState(() {
                                loading = false;
                              });
                            },
                            codeSent: (String verificationid, int? token) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Verify(
                                            verificationid: verificationid,
                                          )));
                              setState(() {
                                loading = false;
                              });
                            },
                            codeAutoRetrievalTimeout: (e) {
                              Utils().toastmessage(e.toString());
                              setState(() {
                                loading = false;
                              });
                            },
                          );
                        } catch (e) {
                          print("error");
                        }
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff53B175),
                      ),
                    ),
                    if (loading) // Show the loading indicator if 'loading' is true
                      CircularProgressIndicator(
                        color: Colors.white,
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
