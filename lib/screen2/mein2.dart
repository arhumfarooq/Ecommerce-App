import 'package:desimart/data/global_list.dart';
import 'package:desimart/model/cart_model.dart';
import 'package:desimart/screen2/cart.dart';
//import 'package:desimart/screen2/carts/cart3.dart';
import 'package:desimart/screen2/explore.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Mein2 extends StatefulWidget {
  const Mein2({super.key});

  @override
  State<Mein2> createState() => _Mein2State();
}

class _Mein2State extends State<Mein2> {
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

  int selectedindex = 0;
  PageController pageController = PageController();

  void ontap(int index) {
    setState(() {
      selectedindex = index;
    });

    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/Group.png',
                      width: 45,
                      height: 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Image.asset(
                        'assets/Exclude.png',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
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
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset("assets/banner.png"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exclusive Offer",
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: TextStyle(
                              color: Color(0xff53B175),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff53B175)),
                        ))
                  ],
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
                            border:
                                Border.all(color: Colors.blueGrey, width: 0.7)),
                        child: Column(
                          children: [
                            Expanded(child: Image.asset('assets/apple.png')),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Red Apple',
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '1kg ,Priceg',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: Color(0xff7C7C7C)),
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
                                            addToCart("Red Apple", 4.49,
                                                'assets/apple.png');
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
                            border:
                                Border.all(color: Colors.blueGrey, width: 0.7)),
                        child: Column(
                          children: [
                            Expanded(child: Image.asset('assets/bana.png')),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bananas',
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '7pcs ,Priceg',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: Color(0xff7C7C7C)),
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
                                            addToCart("Bananas", 4.49,
                                                'assets/bana.png');
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Selling",
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: TextStyle(
                              color: Color(0xff53B175),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff53B175)),
                        ))
                  ],
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
                            border:
                                Border.all(color: Colors.blueGrey, width: 0.7)),
                        child: Column(
                          children: [
                            Expanded(child: Image.asset('assets/tomat.png')),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pepper Red',
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '1kg ,Priceg',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: Color(0xff7C7C7C)),
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
                                            addToCart("Pepper Red", 4.49,
                                                'assets/tomat.png');
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
                            border:
                                Border.all(color: Colors.blueGrey, width: 0.7)),
                        child: Column(
                          children: [
                            Expanded(child: Image.asset('assets/ginger.png')),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ginger',
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '250gm,Priceg',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: Color(0xff7C7C7C)),
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
                                            addToCart("Ginger", 4.49,
                                                'assets/ginger.png');
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
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Groceries",
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: TextStyle(
                              color: Color(0xff53B175),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff53B175)),
                        ))
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 248,
                          height: 105,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 238, 150, 130),
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                  color: Color(0xffF7A593), width: 1)),
                          child: Row(
                            children: [
                              Image.asset('assets/meet.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Meat',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 248,
                          height: 105,
                          decoration: BoxDecoration(
                              color: Color(0xffF8A44C),
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                  color: Color(0xffF8A44C), width: 1)),
                          child: Row(
                            children: [
                              Image.asset('assets/oil.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Cooking Oil \nand Ghee',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                            border:
                                Border.all(color: Colors.blueGrey, width: 0.7)),
                        child: Column(
                          children: [
                            Expanded(child: Image.asset('assets/chik.png')),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Chicken',
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '1Kg,Priceg',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: Color(0xff7C7C7C)),
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
                                            addToCart("Chicken", 4.49,
                                                'assets/chik.png');
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
                            border:
                                Border.all(color: Colors.blueGrey, width: 0.7)),
                        child: Column(
                          children: [
                            Expanded(child: Image.asset('assets/meat.png')),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Meat',
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '1Kg,Priceg',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: Color(0xff7C7C7C)),
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
                                            addToCart("Meat", 4.49,
                                                'assets/meat.png');
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
