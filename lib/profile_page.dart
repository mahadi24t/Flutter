import 'package:flutter/material.dart';
import 'contact_page.dart';        // কন্টাক্ট পেজকে ডাকলাম
import 'headline_checker.dart';    // হেডলাইন চেকার পেজকে ডাকলাম

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Colors.teal,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/4712/4712027.png'), // তোমার নিজের ছবির লিংক বসিয়ে নিও
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Mahadi Hasan',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            
            const Text(
              'CSE Student & AI Researcher',
              style: TextStyle(fontSize: 20, color: Colors.teal, letterSpacing: 1.5),
            ),
            const SizedBox(height: 30),
            
            // কন্টাক্ট পেজে যাওয়ার বোতাম
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactPage()),
                );
              },
              icon: const Icon(Icons.mail),
              label: const Text('Contact Me'),
            ),
            const SizedBox(height: 20),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                IconButton(
                  onPressed: () => debugPrint('ফেসবুকে যাওয়া হচ্ছে...'),
                  icon: const Icon(Icons.facebook, size: 40, color: Colors.blue),
                ),
                const SizedBox(width: 10), 
                IconButton(
                  onPressed: () => debugPrint('গিটহাব খোলা হচ্ছে...'),
                  icon: const Icon(Icons.code, size: 40, color: Colors.black87),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () => debugPrint('শেয়ার করা হচ্ছে...'),
                  icon: const Icon(Icons.share, size: 40, color: Colors.teal),
                ),
              ],
            ),
            const SizedBox(height: 30),
            
            // হেডলাইন চেকার পেজে যাওয়ার নতুন জাদুর লিফট!
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HeadlineCheckerPage()),
                );
              },
              icon: const Icon(Icons.analytics),
              label: const Text('Fake News Checker (Day 1 Night)'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey, // বোতামের রং আলাদা করে দিলাম
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}