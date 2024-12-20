import 'package:desimart/classes/container.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    products(
                        image1: 'assets/red.png',
                        name: 'Red Egg',
                        price: "\$2.99",
                        price1: 2.99,
                        kg: '4pcs ,Price'),
                    SizedBox(
                      width: 20,
                    ),
                    products(
                        image1: 'assets/white.png',
                        name: 'White Egg',
                        price: '1.50',
                        price1: 1.50,
                        kg: '180gm,Price')
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
                    products(
                        image1: 'assets/s.png',
                        name: 'Egg Pasta',
                        price: '15.99',
                        price1: 15.99,
                        kg: '30gm ,Price'),
                    SizedBox(
                      width: 20,
                    ),
                    products(
                        image1: 'assets/nood.png',
                        name: 'Egg Noodles',
                        price: '15.99',
                        price1: 15.99,
                        kg: '2L,Price')
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
                    products(
                        image1: 'assets/mayo.png',
                        name: 'Egg Mayo',
                        price: '15.24',
                        price1: 15.24,
                        kg: '500gm ,Price'),
                    SizedBox(
                      width: 20,
                    ),
                    products(
                        image1: 'assets/pas.png',
                        name: 'Egg Speg',
                        price: '4.49',
                        price1: 4.49,
                        kg: '250gm,Price')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
