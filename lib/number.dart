import 'package:desimart/signup.dart';
import 'package:desimart/verify.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
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
                keyboardType: TextInputType.phone,
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
                        Image.network(
                          'https://cdn.britannica.com/46/3346-050-DE92F66A/flag-symbolism-Pakistan-design-Islamic.jpg',
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
                height: 570,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Verify()));
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff53B175),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
