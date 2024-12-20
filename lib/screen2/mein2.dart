import 'package:desimart/classes/container.dart';
import 'package:desimart/data/global_list.dart';
import 'package:desimart/model/cart_model.dart';
import 'package:desimart/screen2/cart.dart';
import 'package:desimart/screen2/explore.dart';
import 'package:flutter/material.dart';
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
    double screenWidth = MediaQuery.of(context).size.width; // Get screen width
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // Ensure the whole content scrolls
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20), // Apply horizontal padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40), // Add some spacing at the top
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
              SizedBox(height: 30),
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
              SizedBox(height: 30),
              Image.asset("assets/banner.png",
                  width: screenWidth), // Make the banner width dynamic
              SizedBox(height: 10),
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
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .start, // Align items to start to avoid right space
                  children: [
                    products(
                        image1: 'assets/apple.png',
                        name: "Red Apple",
                        price: '\$4.49',
                        price1: 4.49,
                        kg: '1kg ,Priceg'),
                    SizedBox(width: 20),
                    products(
                        image1: 'assets/bana.png',
                        name: "Bananas",
                        price: '\$4.49',
                        price1: 4.49,
                        kg: '7pcs ,Priceg')
                  ],
                ),
              ),
              SizedBox(height: 10),
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
                  mainAxisAlignment: MainAxisAlignment
                      .start, // Align items to start to avoid right space
                  children: [
                    products(
                        image1: 'assets/tomat.png',
                        name: 'Pepper Red',
                        price: "\$4.49",
                        price1: 4.49,
                        kg: '1kg ,Priceg'),
                    SizedBox(width: 20),
                    products(
                        image1: 'assets/ginger.png',
                        name: 'Ginger',
                        price: '\$4.49',
                        price1: 4.49,
                        kg: '250gm,Priceg'),
                  ],
                ),
              ),
              SizedBox(height: 20),
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
                            border:
                                Border.all(color: Color(0xffF7A593), width: 1)),
                        child: Row(
                          children: [
                            Image.asset('assets/meet.png'),
                            SizedBox(width: 10),
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
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 248,
                        height: 105,
                        decoration: BoxDecoration(
                            color: Color(0xffF8A44C),
                            borderRadius: BorderRadius.circular(18),
                            border:
                                Border.all(color: Color(0xffF8A44C), width: 1)),
                        child: Row(
                          children: [
                            Image.asset('assets/oil.png'),
                            SizedBox(width: 10),
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
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    products(
                        image1: 'assets/chik.png',
                        name: 'Chicken',
                        price: '\$4.49',
                        price1: 4.49,
                        kg: '1Kg,Priceg'),
                    SizedBox(width: 20),
                    products(
                        image1: 'assets/meat.png',
                        name: 'Meat',
                        price: '\$4.49',
                        price1: 4.49,
                        kg: '1Kg,Priceg'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
