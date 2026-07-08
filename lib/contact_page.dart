import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Contact Details'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.email, size: 100, color: Colors.teal),
            SizedBox(height: 20),
            Text(
              'mahaditm249@gmail.com', 
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}