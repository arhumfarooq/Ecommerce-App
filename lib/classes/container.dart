import 'package:desimart/data/global_list.dart';
import 'package:desimart/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class products extends StatefulWidget {
  final String image1;
  final String name;
  final String price;
  final double price1;
  final String kg;

  const products(
      {super.key,
      required this.image1,
      required this.name,
      required this.price,
      required this.price1,
      required this.kg});

  @override
  State<products> createState() => _ContainerState();
}

class _ContainerState extends State<products> {
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
          border: Border.all(color: Colors.blueGrey, width: 0.7)),
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
                        color: Colors.black),
                  ),
                  Text(
                    widget.kg,
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: Color(0xff7C7C7C)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.price,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          addToCart(widget.name, widget.price1, widget.image1);
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
    );
  }
}
