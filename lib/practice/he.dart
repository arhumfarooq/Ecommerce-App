import 'package:desimart/utils/utils.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class He extends StatefulWidget {
  const He({super.key});

  @override
  State<He> createState() => _HeState();
}

class _HeState extends State<He> {
  final database = FirebaseDatabase.instance.ref("post");
  final postController = TextEditingController();
  final imageController = TextEditingController();
  final priceController = TextEditingController();
  final weightcontroller = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers when the widget is removed from the widget tree
    postController.dispose();
    imageController.dispose();
    priceController.dispose();
    weightcontroller.dispose();
    super.dispose();
  }

  void addPost() {
    if (postController.text.isEmpty ||
        imageController.text.isEmpty ||
        weightcontroller.text.isEmpty ||
        priceController.text.isEmpty) {
      Utils().toastmessage("All fields are required!");
      return;
    }

    final newPost = {
      'title': postController.text.trim(),
      'image': imageController.text.trim(),
      'price': priceController.text.trim(),
      'weight': weightcontroller.text.trim(),
      'id': DateTime.now().millisecondsSinceEpoch.toString(),
    };

    database.child(newPost['id']!).set(newPost).then((value) {
      Utils().toastmessage("Post added successfully!");
      Navigator.pop(context); // Navigate back to the Post screen
    }).onError((error, stackTrace) {
      Utils().toastmessage(error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Post"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextFormField(
              controller: postController,
              maxLines: 1,
              decoration: const InputDecoration(
                hintText: "Enter Title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: weightcontroller,
              maxLines: 1,
              decoration: const InputDecoration(
                hintText: "Enter weight",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: imageController,
              maxLines: 1,
              decoration: const InputDecoration(
                hintText: "Enter Image URL",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: priceController,
              maxLines: 1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter Price",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: addPost,
              child: const Text("Add Post"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
