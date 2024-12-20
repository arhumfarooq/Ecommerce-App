// import 'dart:math';

// import 'package:desimart/screen2/beverages.dart';
// import 'package:desimart/screen2/egg.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Explore extends StatefulWidget {
//   const Explore({super.key});

//   @override
//   State<Explore> createState() => _ExploreState();
// }

// class _ExploreState extends State<Explore> {
//   final searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: SingleChildScrollView(
//           // Vertical scrolling enabled
//           child: Column(
//             children: [
//               SizedBox(height: 30),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Find Products',
//                     style: GoogleFonts.poppins(
//                         fontSize: 20, fontWeight: FontWeight.w600),
//                   ),
//                 ],
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Color(0xffF2F3F2),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: TextFormField(
//                   controller: searchController,
//                   decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.search),
//                       hintText: 'Search Store',
//                       border: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.white, width: 2)),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.white, width: 1)),
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.white, width: 2))),
//                   onChanged: (String value) {
//                     setState(() {});
//                   },
//                 ),
//               ),
//               SizedBox(height: 30),

//               // Using ListView for better scrolling behavior
//               ListView(
//                 shrinkWrap: true, // To ensure it only takes the required space
//                 physics:
//                     NeverScrollableScrollPhysics(), // Prevent internal scrolling
//                 children: [
//                   Row(
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => Beverages()));
//                         },
//                         child: Container(
//                           width: 174,
//                           height: 190,
//                           decoration: BoxDecoration(
//                               color: Color(0xffB7DFF5).withOpacity(0.25),
//                               borderRadius: BorderRadius.circular(20),
//                               border: Border.all(
//                                   color: Color(0xffB7DFF5), width: 1)),
//                           child: Column(
//                             children: [
//                               Expanded(
//                                 child: Image.asset('assets/colddrink.png'),
//                                 flex: 2,
//                               ),
//                               Expanded(
//                                 child: Text(
//                                   'Beverages',
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w600),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 20),
//                       Container(
//                         width: 174,
//                         height: 190,
//                         decoration: BoxDecoration(
//                             color: Color(0xffF8A44C).withOpacity(0.1),
//                             borderRadius: BorderRadius.circular(20),
//                             border: Border.all(
//                                 color: Color(0xffF8A44C).withOpacity(0.7),
//                                 width: 1)),
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: Image.asset('assets/oil.png'),
//                               flex: 2,
//                             ),
//                             Expanded(
//                               child: Text(
//                                 'Cooking Oil \n  and Ghee',
//                                 style: GoogleFonts.poppins(
//                                     fontSize: 20, fontWeight: FontWeight.w600),
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     children: [
//                       Container(
//                         width: 174,
//                         height: 190,
//                         decoration: BoxDecoration(
//                             color: Color(0xffF7A593).withOpacity(0.25),
//                             borderRadius: BorderRadius.circular(20),
//                             border:
//                                 Border.all(color: Color(0xffF7A593), width: 1)),
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: Image.asset('assets/meet.png'),
//                               flex: 2,
//                             ),
//                             Expanded(
//                               child: Text(
//                                 'Meat and Fish',
//                                 style: GoogleFonts.poppins(
//                                     fontSize: 20, fontWeight: FontWeight.w600),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       SizedBox(width: 20),
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(context,
//                               MaterialPageRoute(builder: (context) => eggs()));
//                         },
//                         child: Container(
//                           width: 174,
//                           height: 190,
//                           decoration: BoxDecoration(
//                               color: Color(0xffFDE598).withOpacity(0.25),
//                               borderRadius: BorderRadius.circular(20),
//                               border: Border.all(
//                                   color: Color(0xffFDE598).withOpacity(0.7),
//                                   width: 1)),
//                           child: Column(
//                             children: [
//                               Expanded(
//                                 child: Image.asset('assets/eggs.png'),
//                                 flex: 2,
//                               ),
//                               Expanded(
//                                 child: Text(
//                                   'Dairy & Eggs',
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w600),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     children: [
//                       Container(
//                         width: 174,
//                         height: 190,
//                         decoration: BoxDecoration(
//                             color: Color(0xff53B175).withOpacity(0.1),
//                             borderRadius: BorderRadius.circular(20),
//                             border: Border.all(
//                                 color: Color(0xff53B175).withOpacity(0.7),
//                                 width: 1)),
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: Image.asset('assets/fruits.png'),
//                               flex: 2,
//                             ),
//                             Expanded(
//                               child: Text(
//                                 'Fresh Fruits \nand Vegetables',
//                                 style: GoogleFonts.poppins(
//                                     fontSize: 20, fontWeight: FontWeight.w600),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       SizedBox(width: 20),
//                       Container(
//                         width: 174,
//                         height: 190,
//                         decoration: BoxDecoration(
//                             color: Color(0xffD3B0E0).withOpacity(0.25),
//                             borderRadius: BorderRadius.circular(20),
//                             border: Border.all(
//                                 color: Color(0xffbD3B0E0).withOpacity(0.7),
//                                 width: 1)),
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: Image.asset('assets/balery.png'),
//                               flex: 2,
//                             ),
//                             Expanded(
//                               child: Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(horizontal: 30),
//                                 child: Text(
//                                   'Bakery & Snacks',
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w600),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:math';
import 'package:desimart/screen2/beverages.dart';
import 'package:desimart/screen2/egg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          // Vertical scrolling enabled
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Find Products',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF2F3F2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search Store',
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2))),
                  onChanged: (String value) {
                    setState(() {});
                  },
                ),
              ),
              SizedBox(height: 30),

              // Using GridView for better responsiveness
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Beverages()));
                          },
                          child: Container(
                            height: 190,
                            decoration: BoxDecoration(
                                color: Color(0xffB7DFF5).withOpacity(0.25),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: Color(0xffB7DFF5), width: 1)),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset('assets/colddrink.png'),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Text(
                                    'Beverages',
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 190,
                          decoration: BoxDecoration(
                              color: Color(0xffF8A44C).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Color(0xffF8A44C).withOpacity(0.7),
                                  width: 1)),
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset('assets/oil.png'),
                                flex: 2,
                              ),
                              Expanded(
                                child: Text(
                                  'Cooking Oil \n  and Ghee',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 190,
                          decoration: BoxDecoration(
                              color: Color(0xffF7A593).withOpacity(0.25),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Color(0xffF7A593), width: 1)),
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset('assets/meet.png'),
                                flex: 2,
                              ),
                              Expanded(
                                child: Text(
                                  'Meat and Fish',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => eggs()));
                          },
                          child: Container(
                            height: 190,
                            decoration: BoxDecoration(
                                color: Color(0xffFDE598).withOpacity(0.25),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: Color(0xffFDE598).withOpacity(0.7),
                                    width: 1)),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset('assets/eggs.png'),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Text(
                                    'Dairy & Eggs',
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 190,
                          decoration: BoxDecoration(
                              color: Color(0xff53B175).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Color(0xff53B175).withOpacity(0.7),
                                  width: 1)),
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset('assets/fruits.png'),
                                flex: 2,
                              ),
                              Expanded(
                                child: Text(
                                  'Fresh Fruits \nand Vegetables',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 190,
                          decoration: BoxDecoration(
                              color: Color(0xffD3B0E0).withOpacity(0.25),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Color(0xffbD3B0E0).withOpacity(0.7),
                                  width: 1)),
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset('assets/balery.png'),
                                flex: 2,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: Text(
                                    'Bakery & Snacks',
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
