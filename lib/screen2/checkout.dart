import 'package:desimart/screen2/last.dart';
import 'package:desimart/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool ischecked1 = false;
  bool ischeck2 = false;
  final _formkey3 = GlobalKey<FormState>();
  final firstcontroller = TextEditingController();
  final secondcontroller = TextEditingController();
  final addresscontroller = TextEditingController();
  final postalcontroller = TextEditingController();
  final numbercontroller = TextEditingController();
  final regioncontroller = TextEditingController();
  final citycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff53B175),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "SHIPPING",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Form(
                    key: _formkey3,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: TextFormField(
                            controller: firstcontroller,
                            decoration: InputDecoration(
                                hintText: 'First Name',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff53B175), width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter your name";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: TextFormField(
                            controller: secondcontroller,
                            decoration: InputDecoration(
                                hintText: 'Last Name',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff53B175), width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter your name";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: TextFormField(
                            controller: addresscontroller,
                            decoration: InputDecoration(
                                hintText: 'Address',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff53B175), width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter your address";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: TextFormField(
                            controller: postalcontroller,
                            decoration: InputDecoration(
                                hintText: 'Postal code',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff53B175), width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter a postal code";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: TextFormField(
                            controller: numbercontroller,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                                hintText: 'Phone number',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff53B175), width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter your phone number";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: TextFormField(
                            controller: regioncontroller,
                            decoration: InputDecoration(
                                hintText: 'Region',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff53B175), width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter your region";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: TextFormField(
                            controller: citycontroller,
                            decoration: InputDecoration(
                                hintText: 'City',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff53B175), width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter your City";
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: ischecked1,
                            onChanged: (bool? value) {
                              setState(() {
                                ischecked1 = value ?? true;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: ischecked1
                                    ? Color(0xff53B175)
                                    : Colors
                                        .grey, // Border color when checkbox is checked or unchecked
                                width: 2, // Border thickness
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            activeColor: Color(
                                0xff53B175), // Checkbox checked hone par color
                            checkColor:
                                Colors.white, // Checkbox ke tick ka color
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  "I agree to the",
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffC7C7C7),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Terms and Conditions",
                                    style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff53B175),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            " and ",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffC7C7C7),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Privacy Policy",
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff53B175),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: ischeck2,
                        onChanged: (bool? value) {
                          setState(() {
                            ischeck2 = value ?? true;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: ischeck2
                                ? Color(0xff53B175)
                                : Colors
                                    .grey, // Border color when checkbox is checked or unchecked
                            width: 2, // Border thickness
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        activeColor: Color(
                            0xff53B175), // Checkbox checked hone par color
                        checkColor: Colors.white, // Checkbox ke tick ka color
                      ),
                      Text(
                        "I confirm that the provided shipping\naddress is accurate and complete",
                        style: GoogleFonts.poppins(
                            fontSize: 17, color: Color(0xffC7C7C7)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      height: 67,
                      width: 364,
                      decoration: BoxDecoration(
                        color: const Color(0xff53B175),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (_formkey3.currentState!.validate() &&
                              ischecked1 &&
                              ischeck2) {
                            Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Last()))
                                .then((value) {
                              Utils().toastmessage("Order Accepted");
                            }).onError((error, stackTrace) {
                              Utils().toastmessage(error.toString());
                            });
                          } else {
                            Utils().toastmessage(
                                "Please complete all fields and agree to the terms.");
                          }
                        },
                        child: Text(
                          'PLACE ORDER',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: const Color(0xffFFF9FF),
                          ),
                        ),
                      ),
                    ),
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
