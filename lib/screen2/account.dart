import 'dart:math';
import 'package:desimart/login.dart';
import 'package:desimart/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _FavouriteState();
}

class _FavouriteState extends State<Account> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // Wrap the column with SingleChildScrollView for overflow handling
        child: SafeArea(
          child: Column(
            children: [
              // Profile section

              // Orders section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.person, size: 20),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        'Personal Information',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      iconSize: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Divider(height: 1, thickness: 1),
              SizedBox(height: 10),

              // My Details section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.shopping_bag, size: 20),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        'Orders',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      iconSize: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Divider(height: 1, thickness: 1),
              SizedBox(height: 10),

              // Delivery Address section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 20),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        'Delivery Address',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      iconSize: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Divider(height: 1, thickness: 1),
              SizedBox(height: 10),

              // Payment Method section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.credit_card_sharp, size: 20),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        'Payment Method',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      iconSize: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Divider(height: 1, thickness: 1),
              SizedBox(height: 10),

              // Promo Code section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.local_offer_outlined, size: 20),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        'Promo Code',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      iconSize: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Divider(height: 1, thickness: 1),
              SizedBox(height: 10),

              // Notifications section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.notifications, size: 20),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        'Notifications',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      iconSize: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Divider(height: 1, thickness: 1),
              SizedBox(height: 10),

              // Help section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.help_outline_outlined, size: 20),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        'Help',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      iconSize: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Divider(height: 1, thickness: 1),
              SizedBox(height: 10),

              // About section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.account_circle, size: 20),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        'About',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      iconSize: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 200),

              // Log Out button
              Container(
                height: 67,
                width: 364,
                decoration: BoxDecoration(
                  color: Color(0xff53B175),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: TextButton(
                  onPressed: () {
                    auth.signOut().then((value) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                        (route) => false,
                      );
                    }).catchError((error) {
                      Utils().toastmessage(error.toString());
                    });
                  },
                  child: Text(
                    'Log Out',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xffFFF9FF)),
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
