import 'package:desimart/data/global_list.dart';
import 'package:desimart/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_database/firebase_database.dart';

class products extends StatefulWidget {
  final String image1;
  final String name;
  final String price;
  final double price1;
  final String kg;

  const products({
    super.key,
    required this.image1,
    required this.name,
    required this.price,
    required this.price1,
    required this.kg,
  });

  @override
  State<products> createState() => _ProductState();
}

class _ProductState extends State<products> {
  // Firebase Realtime Database reference
  final DatabaseReference _database = FirebaseDatabase.instance.ref('cart');

  // Function to add item to cart (local and database)
  void addToCart(String name, double price, String imagePath) {
    setState(() {
      // Update local cart list
      int index = cart.indexWhere((item) => item.name == name);
      if (index != -1) {
        cart[index].quantity++; // Increase quantity if already in cart
      } else {
        cart.add(CartItem1(
            name: name, price: price, proImage: imagePath, quantity: 1));
      }
    });

    // Save the updated cart item to Realtime Database
    final newCartItemRef = _database.push();
    newCartItemRef.set({
      'name': name,
      'price': price,
      'imagePath': imagePath,
      'quantity': 1, // Add quantity as 1 initially
    }).then((_) {
      print('Item added to cart in database successfully');
    }).catchError((error) {
      print('Error adding item to cart in database: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        border: Border.all(color: Colors.blueGrey, width: 0.7),
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(widget.image1)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    widget.kg,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xff7C7C7C),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.price,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          // Add to local and database cart
                          addToCart(widget.name, widget.price1, widget.image1);
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        backgroundColor: const Color(0xff53B175),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
