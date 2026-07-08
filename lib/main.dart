import 'package:flutter/material.dart';
import 'profile_page.dart'; // শুধু প্রোফাইল পেজটাকে ডাকলেই হবে

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfilePage(), // অ্যাপ শুরু হবে প্রোফাইল পেজ থেকে
    ),
  );
}