import 'package:desimart/data/global_list.dart';
import 'package:desimart/model/cart_model.dart';
import 'package:desimart/screen2/cart.dart';
import 'package:desimart/screen2/navigation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Beverages extends StatefulWidget {
  const Beverages({super.key});

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
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
            'Beverages',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Navigation()));
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
                        Expanded(child: Image.asset('assets/coke.png')),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Diet Coke',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  '355ml ,Price',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, color: Color(0xff7C7C7C)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$1.99",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        addToCart("Diet Coke", 1.99,
                                            'assets/coke.png');
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
                        Expanded(child: Image.asset('assets/sprite.png')),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sprite Can',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  '355ml,Price',
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
                                        addToCart("Sprite Can", 1.50,
                                            'assets/sprite.png');
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
                        Expanded(child: Image.asset('assets/applejuics.png')),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Apple Juice',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  '2L ,Price',
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
                                        addToCart("Apple Juice", 15.99,
                                            'assets/applejuics.png');
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
                        Expanded(child: Image.asset('assets/mango.png')),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mango Juice',
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
                                        addToCart("Mango Juice", 15.99,
                                            'assets/mango.png');
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
                        Expanded(child: Image.asset('assets/pepsi.png')),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pepsi',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  '330ml,Price',
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
                                            "Pepsi", 4.49, 'assets/pepsi.png');
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
                        Expanded(child: Image.asset('assets/cola.png')),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Coca Cola',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  '330ml,Price',
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
                                            "", 4.49, 'assets/ginger.png');
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
  }
}
