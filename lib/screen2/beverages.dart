import 'package:desimart/classes/container.dart';
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              icon: Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    products(
                      image1: 'assets/coke.png',
                      name: 'Diet Coke',
                      price: "\$1.99",
                      price1: 1.99,
                      kg: '355ml ,Price',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    products(
                        image1: 'assets/sprite.png',
                        name: 'Sprite Can',
                        price: "\$1.50",
                        price1: 1.50,
                        kg: '355ml,Price')
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
                      products(
                          image1: 'assets/applejuics.png',
                          name: 'Apple Juice',
                          price: "\$15.99",
                          price1: 15.99,
                          kg: '2L ,Price'),
                      SizedBox(
                        width: 20,
                      ),
                      products(
                          image1: 'assets/mango.png',
                          name: 'Mango Juice',
                          price: "\$15.99",
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
                          image1: 'assets/pepsi.png',
                          name: 'Pepsi',
                          price: "\$4.49",
                          price1: 4.49,
                          kg: '330ml,Price'),
                      SizedBox(
                        width: 20,
                      ),
                      products(
                          image1: 'assets/cola.png',
                          name: 'Coca Cola',
                          price: "\$4.49",
                          price1: 4.49,
                          kg: '330ml,Price')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
