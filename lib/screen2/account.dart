import 'dart:math';

import 'package:desimart/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _FavouriteState();
}

class _FavouriteState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/s.png'),
                  radius: 27,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Our Project',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'project@gmail.com',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Color(0xff7C7C7C)),
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: sqrt1_2,
            thickness: sqrt1_2,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  size: 20,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  // Ensures the text stays in one line and takes up the remaining space
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
                )
              ],
            ),
          ),
          Divider(
            height: sqrt1_2,
            thickness: sqrt1_2,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.description_rounded,
                  size: 20,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    'My Details',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  iconSize: 20,
                  color: Colors.black,
                )
              ],
            ),
          ),
          Divider(
            height: sqrt1_2,
            thickness: sqrt1_2,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 20,
                ),
                SizedBox(
                  width: 20,
                ),
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
                )
              ],
            ),
          ),
          Divider(
            height: sqrt1_2,
            thickness: sqrt1_2,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.credit_card_sharp,
                  size: 20,
                ),
                SizedBox(
                  width: 20,
                ),
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
                )
              ],
            ),
          ),
          Divider(
            height: sqrt1_2,
            thickness: sqrt1_2,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.local_offer_outlined,
                  size: 20,
                ),
                SizedBox(
                  width: 20,
                ),
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
                )
              ],
            ),
          ),
          Divider(
            height: sqrt1_2,
            thickness: sqrt1_2,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.notifications,
                  size: 20,
                ),
                SizedBox(
                  width: 20,
                ),
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
                )
              ],
            ),
          ),
          Divider(
            height: sqrt1_2,
            thickness: sqrt1_2,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.help_outline_outlined,
                  size: 20,
                ),
                SizedBox(
                  width: 20,
                ),
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
                )
              ],
            ),
          ),
          Divider(
            height: sqrt1_2,
            thickness: sqrt1_2,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.account_circle,
                  size: 20,
                ),
                SizedBox(
                  width: 20,
                ),
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
                )
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            height: 67,
            width: 364,
            decoration: BoxDecoration(
                color: Color(0xff53B175),
                borderRadius: BorderRadius.circular(19)),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  'Log Out',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xffFFF9FF)),
                )),
          ),
        ],
      ),
    );
  }
}
