import 'dart:math';

import 'package:desimart/number.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.green),
            height: 414,
            child: Image.asset(
              'assets//fl.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Get your groceries',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 26),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'with nectar',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 26),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // TextFormField(
                //   keyboardType: TextInputType.phone,
                //   decoration: InputDecoration(
                //       labelText: 'Phone Number',
                //       labelStyle: TextStyle(color: Colors.black),
                //       hintText: '+92 23423178',
                //       border: OutlineInputBorder(
                //           borderSide: BorderSide(color: Colors.black)),
                //       focusedBorder: OutlineInputBorder(
                //           borderSide:
                //               BorderSide(color: Colors.black, width: 2))),
                // ),

                InkWell(
                  onTap: () {
                    // Define your action on tap here
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Number()));
                  },
                  borderRadius: BorderRadius.circular(19),
                  child: Container(
                    width: 364,
                    height: 67,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            'Create a new account',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xff5383EC),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Text(
                  'Or connect with social media',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xff828282)),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    // Define your action on tap here
                    print("Continue with Google button tapped!");
                  },
                  borderRadius: BorderRadius.circular(19),
                  child: Container(
                    width: 364,
                    height: 67,
                    decoration: BoxDecoration(
                      color: Color(0xff5383EC),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 38),
                          child: Image.asset(
                            'assets//google.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            'Continue with Google',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    // Define your action on tap here
                    print("Continue with Google button tapped!");
                  },
                  borderRadius: BorderRadius.circular(19),
                  child: Container(
                    width: 364,
                    height: 67,
                    decoration: BoxDecoration(
                      color: Color(0xff4A66AC),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Image.asset(
                            'assets//Vector.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            'Continue with Facebook',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Sign extends StatefulWidget {
//   const Sign({super.key});

//   @override
//   State<Sign> createState() => _SignState();
// }

// class _SignState extends State<Sign> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(color: Colors.green),
//             height: 414,
//             child: Image.asset(
//               'assets//fl.png', // Ensure the correct path for your image
//               fit: BoxFit.fitHeight,
//             ),
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Get your groceries',
//                   style: GoogleFonts.poppins(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 26,
//                   ),
//                 ),
//                 Text(
//                   'with nectar',
//                   style: GoogleFonts.poppins(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 26,
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 TextFormField(
//                   keyboardType: TextInputType.phone,
//                   decoration: InputDecoration(
//                     labelText: 'Phone Number',
//                     hintText: '+92 23423178',
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black, width: 2),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Or connect with social media',
//                   style: GoogleFonts.poppins(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: Color(0xff828282),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 InkWell(
//                   onTap: () {
//                     // Define your action on tap here
//                     print("Continue with Google button tapped!");
//                   },
//                   borderRadius: BorderRadius.circular(19),
//                   child: Container(
//                     width: 364,
//                     height: 67,
//                     decoration: BoxDecoration(
//                       color: Color(0xff5383EC),
//                       borderRadius: BorderRadius.circular(19),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         // Image.asset(
//                         //   'assets//google.png', // Update with the path to your Google logo image
//                         //   width: 24,
//                         //   height: 24,
//                         // ),
//                         SizedBox(width: 10),
//                         Text(
//                           'Continue with Google',
//                           style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 18,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
