import 'package:desimart/screen2/navigation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Last extends StatelessWidget {
  const Last({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Center(child: Image.asset('assets/l.png')),
            Text(
              "Your Order has been\n            accepted",
              style: GoogleFonts.poppins(
                  fontSize: 28, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Your items has been placcd and is on \n            it’s way to being processed",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffC7C7C7)),
            ),
            SizedBox(
              height: 230,
            ),
            Center(
              child: Container(
                height: 67,
                width: 364,
                decoration: BoxDecoration(
                  color: const Color(0xff53B175),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Navigation()));
                  },
                  child: Text(
                    'Back to Home',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: const Color(0xffFFF9FF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
