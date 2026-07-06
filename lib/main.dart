import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfilePage(), // দেখো, এখানে আমরা নিজেদের বানানো লেগো ব্লক ডাকছি!
    ),
  );
}

// ==========================================
// প্রথম পাতা: আমাদের নিজেদের বানানো লেগো ব্লক
// ==========================================
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
              // এখানে তোমার সেই আগের ছবির লিংকটা বসিয়ে দিও
              backgroundImage: NetworkImage('https://scontent.fdac207-1.fna.fbcdn.net/v/t39.30808-6/589736148_4472810502942110_1736721699191081442_n.jpg?stp=dst-jpg_tt6&cstp=mx864x864&ctp=s864x864&_nc_cat=109&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeE7bys0H-xkpt720zLVZ_ZwznQqWmV_yrTOdCpaZX_KtHx4j92wr3wZaHLFqJwFPD7FrgCTHuUbi6_m7UazK40R&_nc_ohc=INRPxQynBAoQ7kNvwF-ioyA&_nc_oc=AdohRCYjRq3A_NGMQAWDiS-Y8X9ZEbS71Fw0IzmOO5cEq24m6wZVmQ_5KIKH-jWfdZU&_nc_zt=23&_nc_ht=scontent.fdac207-1.fna&_nc_gid=7-QhFzhjfcGDZ_zZjYVfcQ&_nc_ss=7b2a8&oh=00_AQAOxveV7Ojj4S7Cb3tinIs9F49P2Bk22shjTQdtqnbQLg&oe=6A50D3A1'), 
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
            
            ElevatedButton.icon(
              onPressed: () {
                // জাদুর লিফট: ContactPage-এ যাওয়ার নির্দেশ!
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactPage()),
                );
              },
              icon: const Icon(Icons.mail),
              label: const Text('Contact Me'),
            ),
          ],
        ),
      ),
    );
  }
}

// ==========================================
// দ্বিতীয় পাতা: যোগাযোগের নতুন স্ক্রিন
// ==========================================
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
              'mahaditm249@gmail.com', // তুমি চাইলে তোমার আসল ইমেইল দিতে পারো
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}