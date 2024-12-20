// // import 'package:firebase_database/firebase_database.dart';
// // import 'package:firebase_database/ui/firebase_animated_list.dart';
// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'he.dart';

// // class Post extends StatefulWidget {
// //   const Post({Key? key}) : super(key: key);

// //   @override
// //   State<Post> createState() => _PostState();
// // }

// // class _PostState extends State<Post> {
// //   final ref = FirebaseDatabase.instance.ref("post");

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Posts"),
// //         backgroundColor: Colors.green,
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           Navigator.push(
// //               context, MaterialPageRoute(builder: (context) => const He()));
// //         },
// //         child: const Icon(Icons.add),
// //         backgroundColor: Colors.green,
// //       ),
// //       body: FirebaseAnimatedList(
// //         query: ref,
// //         itemBuilder: (context, snapshot, animation, index) {
// //           // Extract data from snapshot
// //           final title = snapshot.child('title').value.toString();
// //           final image = snapshot.child('image').value.toString();
// //           final price = snapshot.child('price').value.toString();

// //           return Card(
// //             margin: const EdgeInsets.all(8),
// //             shape: RoundedRectangleBorder(
// //               borderRadius: BorderRadius.circular(12),
// //             ),
// //             child: ListTile(
// //               leading: ClipRRect(
// //                 borderRadius: BorderRadius.circular(8),
// //                 child: Image.network(
// //                   image,
// //                   width: 50,
// //                   height: 50,
// //                   fit: BoxFit.cover,
// //                   errorBuilder: (context, error, stackTrace) =>
// //                       const Icon(Icons.image, size: 50),
// //                 ),
// //               ),
// //               title: Text(
// //                 title,
// //                 style: GoogleFonts.poppins(
// //                   fontSize: 18,
// //                   fontWeight: FontWeight.w600,
// //                   color: Colors.black,
// //                 ),
// //               ),
// //               subtitle: Text(
// //                 'Price: ₹$price',
// //                 style: GoogleFonts.poppins(
// //                   fontSize: 14,
// //                   color: Colors.grey[700],
// //                 ),
// //               ),
// //               trailing: IconButton(
// //                 icon: const Icon(Icons.delete, color: Colors.red),
// //                 onPressed: () {
// //                   ref.child(snapshot.key!).remove();
// //                 },
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
// import 'package:desimart/practice/he.dart';
// import 'package:desimart/screen2/cart.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:desimart/model/cart_model.dart';
// import 'package:desimart/data/global_list.dart';

// class ProductList extends StatefulWidget {
//   const ProductList({Key? key}) : super(key: key);

//   @override
//   State<ProductList> createState() => _ProductListState();
// }

// class _ProductListState extends State<ProductList> {
//   final DatabaseReference ref = FirebaseDatabase.instance.ref("post");

//   void addToCart(String name, double price, String imagePath) {
//     setState(() {
//       // Check if the item is already in the cart
//       int index = cart.indexWhere((item) => item.name == name);
//       if (index != -1) {
//         cart[index].quantity++; // Increase quantity if already in cart
//       } else {
//         cart.add(CartItem1(name: name, price: price, proImage: imagePath));
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Products'),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: FirebaseAnimatedList(
//               query: ref,
//               itemBuilder: (context, snapshot, animation, index) {
//                 final productName = snapshot.child('title').value.toString();
//                 final productImage = snapshot.child('image').value.toString();
//                 final productPrice = snapshot.child('price').value.toString();
//                 final productweight = snapshot.child('weight').value.toString();

//                 return Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.symmetric(
//                           vertical: 10, horizontal: 15),
//                       width: 174,
//                       height: 248,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(18),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.blueGrey.withOpacity(0.3),
//                             spreadRadius: 0.4,
//                           ),
//                         ],
//                         border: Border.all(color: Colors.blueGrey, width: 0.7),
//                       ),
//                       child: Column(
//                         children: [
//                           // Display network image
//                           Expanded(
//                             child: Image.network(
//                               productImage,
//                               fit: BoxFit.cover,
//                               errorBuilder: (context, error, stackTrace) =>
//                                   const Icon(
//                                 Icons.image_not_supported,
//                                 size: 50,
//                                 color: Colors.grey,
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 15),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     productName,
//                                     style: GoogleFonts.poppins(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w600,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                   Text(
//                                     productweight,
//                                     style: GoogleFonts.poppins(
//                                       fontSize: 14,
//                                       color: const Color(0xff7C7C7C),
//                                     ),
//                                   ),
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Text(
//                                         "\$$productPrice",
//                                         style: GoogleFonts.poppins(
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 18,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                       FloatingActionButton(
//                                           onPressed: () {
//                                             Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                     builder: (context) =>
//                                                         Cart()));
//                                           },
//                                           child: const Icon(
//                                             Icons.add,
//                                             color: Colors.white,
//                                           ),
//                                           backgroundColor: Colors.black),
//                                       FloatingActionButton(
//                                         onPressed: () {
//                                           addToCart(
//                                             productName,
//                                             double.tryParse(productPrice) ??
//                                                 0.0,
//                                             productImage,
//                                           );
//                                         },
//                                         child: const Icon(
//                                           Icons.add,
//                                           color: Colors.white,
//                                         ),
//                                         backgroundColor:
//                                             const Color(0xff53B175),
//                                         mini: true,
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//           Expanded(
//               child: StreamBuilder(
//                   stream: ref.onValue,
//                   builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
//                     if (!snapshot.hasData) {
//                       return CircularProgressIndicator();
//                     } else {
//                       return ListView.builder(
//                           itemCount: snapshot.data!.snapshot.children.length,
//                           itemBuilder: (context, index) {
//                             child:
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   margin: const EdgeInsets.symmetric(
//                                       vertical: 10, horizontal: 15),
//                                   width: 174,
//                                   height: 248,
//                                   decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(18),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: Colors.blueGrey.withOpacity(0.3),
//                                         spreadRadius: 0.4,
//                                       ),
//                                     ],
//                                     border: Border.all(
//                                         color: Colors.blueGrey, width: 0.7),
//                                   ),
//                                   child: Column(
//                                     children: [
//                                       // Display network image
//                                       Expanded(
//                                         child: Image.asset(
//                                           "assets/ss.png",
//                                           fit: BoxFit.cover,
//                                           errorBuilder:
//                                               (context, error, stackTrace) =>
//                                                   const Icon(
//                                             Icons.image_not_supported,
//                                             size: 50,
//                                             color: Colors.grey,
//                                           ),
//                                         ),
//                                       ),
//                                       Expanded(
//                                         child: Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                               horizontal: 15),
//                                           child: Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.start,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 "arhum",
//                                                 style: GoogleFonts.poppins(
//                                                   fontSize: 20,
//                                                   fontWeight: FontWeight.w600,
//                                                   color: Colors.black,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 "23 ",
//                                                 style: GoogleFonts.poppins(
//                                                   fontSize: 14,
//                                                   color:
//                                                       const Color(0xff7C7C7C),
//                                                 ),
//                                               ),
//                                               Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(
//                                                     "assets/ss.png",
//                                                     style: GoogleFonts.poppins(
//                                                       fontWeight:
//                                                           FontWeight.w600,
//                                                       fontSize: 18,
//                                                       color: Colors.black,
//                                                     ),
//                                                   ),
//                                                   FloatingActionButton(
//                                                       onPressed: () {
//                                                         Navigator.push(
//                                                             context,
//                                                             MaterialPageRoute(
//                                                                 builder:
//                                                                     (context) =>
//                                                                         Cart()));
//                                                       },
//                                                       child: const Icon(
//                                                         Icons.add,
//                                                         color: Colors.white,
//                                                       ),
//                                                       backgroundColor:
//                                                           Colors.black),
//                                                   FloatingActionButton(
//                                                     onPressed: () {
//                                                       addToCart(
//                                                         "arhum",
//                                                         double.tryParse("23") ??
//                                                             0.0,
//                                                         "assets/ss.png",
//                                                       );
//                                                     },
//                                                     child: const Icon(
//                                                       Icons.add,
//                                                       color: Colors.white,
//                                                     ),
//                                                     backgroundColor:
//                                                         const Color(0xff53B175),
//                                                     mini: true,
//                                                   ),
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             );
//                           });
//                     }
//                   }))
//         ],
//       ),
//       //  FloatingActionButton(
//       //           onPressed: () {
//       //             Navigator.push(
//       //                 context, MaterialPageRoute(builder: (context) => He()));
//       //           },
//       //           child: Icon(Icons.add),

//       //         ),

//       floatingActionButton: FloatingActionButton(onPressed: () {
//         Navigator.push(context, MaterialPageRoute(builder: (context) => He()));
//       }),
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:desimart/practice/he.dart';
import 'package:desimart/screen2/cart.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:desimart/model/cart_model.dart';
import 'package:desimart/data/global_list.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final DatabaseReference ref = FirebaseDatabase.instance.ref("post");
  final searchfliter = TextEditingController();

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
        title: const Text('Products'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: searchfliter,
              decoration: InputDecoration(
                hintText: "search",
                border: OutlineInputBorder(),
              ),
              onChanged: (String value) {
                setState(() {});
              },
            ),

            // First Expanded: FirebaseAnimatedList
            Expanded(
              child: FirebaseAnimatedList(
                query: ref,
                itemBuilder: (context, snapshot, animation, index) {
                  if (!snapshot.exists) {
                    return const Center(child: Text("No data available"));
                  }

                  final productName =
                      snapshot.child('title').value?.toString() ?? "Unknown";
                  final productImage =
                      snapshot.child('image').value?.toString() ?? "";
                  final productPrice =
                      snapshot.child('price').value?.toString() ?? "0.0";
                  final productWeight =
                      snapshot.child('weight').value?.toString() ?? "Unknown";

                  if (searchfliter.text.isEmpty) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      width: 174,
                      height: 248,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.3),
                            spreadRadius: 0.4,
                          ),
                        ],
                        border: Border.all(color: Colors.blueGrey, width: 0.7),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.network(
                              productImage,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(
                                Icons.image_not_supported,
                                size: 50,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productName,
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    productWeight,
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: const Color(0xff7C7C7C),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$$productPrice",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      FloatingActionButton(
                                        onPressed: () {
                                          addToCart(
                                            productName,
                                            double.tryParse(productPrice) ??
                                                0.0,
                                            productImage,
                                          );
                                        },
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        backgroundColor:
                                            const Color(0xff53B175),
                                        mini: true,
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
                  } else if (productName.toLowerCase().contains(
                      searchfliter.text.toLowerCase().toLowerCase())) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      width: 174,
                      height: 248,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.3),
                            spreadRadius: 0.4,
                          ),
                        ],
                        border: Border.all(color: Colors.blueGrey, width: 0.7),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.network(
                              productImage,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(
                                Icons.image_not_supported,
                                size: 50,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productName,
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    productWeight,
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: const Color(0xff7C7C7C),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$$productPrice",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      FloatingActionButton(
                                        onPressed: () {
                                          addToCart(
                                            productName,
                                            double.tryParse(productPrice) ??
                                                0.0,
                                            productImage,
                                          );
                                        },
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        backgroundColor:
                                            const Color(0xff53B175),
                                        mini: true,
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
                  } else {
                    return Container();
                  }
                },
              ),
            ),

            // Second Expanded: StreamBuilder
            // Expanded(
            //   child: StreamBuilder(
            //     stream: ref.onValue,
            //     builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
            //       if (snapshot.connectionState == ConnectionState.waiting) {
            //         return const Center(child: CircularProgressIndicator());
            //       }

            //       if (snapshot.hasError) {
            //         return const Center(child: Text("Error loading data"));
            //       }

            //       if (!snapshot.hasData ||
            //           snapshot.data!.snapshot.value == null) {
            //         return const Center(child: Text("No data available"));
            //       }

            //       final data =
            //           (snapshot.data!.snapshot.value as Map<dynamic, dynamic>)
            //               .values
            //               .toList();

            //       return ListView.builder(
            //         itemCount: data.length,
            //         itemBuilder: (context, index) {
            //           final item = data[index];
            //           final productName = item['title'] ?? "Unknown";
            //           final productImage = item['image'] ?? "";
            //           final productPrice = item['price'] ?? "0.0";

            //           return Card(
            //             margin: const EdgeInsets.all(8),
            //             shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(12),
            //             ),
            //             child: ListTile(
            //               leading: ClipRRect(
            //                 borderRadius: BorderRadius.circular(8),
            //                 child: Image.network(
            //                   productImage,
            //                   width: 50,
            //                   height: 50,
            //                   fit: BoxFit.cover,
            //                   errorBuilder: (context, error, stackTrace) =>
            //                       const Icon(Icons.image_not_supported,
            //                           size: 50, color: Colors.grey),
            //                 ),
            //               ),
            //               title: Text(
            //                 productName,
            //                 style: GoogleFonts.poppins(
            //                   fontSize: 18,
            //                   fontWeight: FontWeight.w600,
            //                   color: Colors.black,
            //                 ),
            //               ),
            //               subtitle: Text(
            //                 "\$$productPrice",
            //                 style: GoogleFonts.poppins(
            //                   fontSize: 14,
            //                   color: Colors.grey[700],
            //                 ),
            //               ),
            //             ),
            //           );
            //         },
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const He()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
