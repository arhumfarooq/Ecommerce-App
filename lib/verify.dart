import 'package:desimart/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Verify extends StatefulWidget {
  final String verificationid;
  const Verify({super.key, required this.verificationid});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
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
                  'Enter your 4-digit code',
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
                  'Code',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xff7C7C7C)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                maxLength: 4, // Limits the input to 4 characters
                inputFormatters: [
                  FilteringTextInputFormatter
                      .digitsOnly, // Only digits are allowed
                ],
                // textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'Enter your code',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2))),
              ),
              SizedBox(
                height: 570,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend code',
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Color(0xff53B175)),
                      )),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff53B175),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
