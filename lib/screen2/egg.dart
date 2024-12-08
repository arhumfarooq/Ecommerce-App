import 'package:desimart/data/global_list.dart';
import 'package:desimart/model/cart_model.dart';
import 'package:desimart/screen2/cart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class eggs extends StatefulWidget {
  const eggs({super.key});

  @override
  State<eggs> createState() => _eggsState();
}

class _eggsState extends State<eggs> {
  void addToCart(String name, double price, String imagePath) {
    setState(() {
      // Check if the item is already in the cart
      int index = cart.indexWhere((item) => item.name == name);
      if (index != -1) {
        cart[index].quantity++; // Increase quantity if already in cart
      } else {
        cart.add(CartItem1(name: name, price: price, proImage: imagePath));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Dairy and Eggs',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          //IconButton(onPressed: () {}, icon: Icon(Icons.menu_book_outlined))
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              icon: Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 174,
                    height: 248,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.3),
                            spreadRadius: 0.4,
                          )
                        ],
                        border: Border.all(color: Colors.blueGrey, width: 0.7)),
                    child: Column(
                      children: [
                        Expanded(child: Image.asset('assets/red.png')),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Red Egg',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  '4pcs ,Price',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, color: Color(0xff7C7C7C)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$2.99",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        addToCart(
                                            "Red Egg", 2.99, 'assets/red.png');
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xff53B175),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 174,
                    height: 248,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.3),
                            spreadRadius: 0.4,
                          )
                        ],
                        border: Border.all(color: Colors.blueGrey, width: 0.7)),
                    child: Column(
                      children: [
                        Expanded(child: Image.asset('assets/white.png')),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'White Egg',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  '180gm,Price',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, color: Color(0xff7C7C7C)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$1.50",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        addToCart("White Egg", 1.50,
                                            'assets/white.png');
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xff53B175),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 174,
                    height: 248,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.3),
                            spreadRadius: 0.4,
                          )
                        ],
                        border: Border.all(color: Colors.blueGrey, width: 0.7)),
                    child: Column(
                      children: [
                        Expanded(child: Image.asset('assets/s.png')),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Egg Pasta',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  '30gm ,Price',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, color: Color(0xff7C7C7C)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$15.99",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        addToCart(
                                            "Egg Pasta", 15.99, 'assets/s.png');
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xff53B175),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 174,
                    height: 248,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.3),
                            spreadRadius: 0.4,
                          )
                        ],
                        border: Border.all(color: Colors.blueGrey, width: 0.7)),
                    child: Column(
                      children: [
                        Expanded(child: Image.asset('assets/nood.png')),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Egg Noodles',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  '2L,Price',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, color: Color(0xff7C7C7C)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$15.99",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        addToCart("Egg Noodles", 15.99,
                                            'assets/nood.png');
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xff53B175),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 174,
                    height: 248,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.3),
                            spreadRadius: 0.4,
                          )
                        ],
                        border: Border.all(color: Colors.blueGrey, width: 0.7)),
                    child: Column(
                      children: [
                        Expanded(child: Image.asset('assets/mayo.png')),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Egg Mayo',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  '500gm ,Price',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, color: Color(0xff7C7C7C)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$15.24",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        addToCart("Egg Mayo", 15.24,
                                            'assets/mayo.png');
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xff53B175),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 174,
                    height: 248,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.3),
                            spreadRadius: 0.4,
                          )
                        ],
                        border: Border.all(color: Colors.blueGrey, width: 0.7)),
                    child: Column(
                      children: [
                        Expanded(child: Image.asset('assets/pas.png')),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Egg Speg',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  '250gm,Price',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, color: Color(0xff7C7C7C)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$4.49",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        addToCart(
                                            "Egg Speg", 4.49, 'assets/pas.png');
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xff53B175),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
