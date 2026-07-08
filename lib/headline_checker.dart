import 'package:flutter/material.dart';

class HeadlineCheckerPage extends StatefulWidget {
  const HeadlineCheckerPage({super.key});

  @override
  State<HeadlineCheckerPage> createState() => _HeadlineCheckerPageState();
}

class _HeadlineCheckerPageState extends State<HeadlineCheckerPage> {
  final TextEditingController _textController = TextEditingController();
  String _resultMessage = 'এখানে ফলাফল দেখাবে...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: const Text('Headline Checker'),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'খবরের হেডলাইন লিখুন',
                prefixIcon: Icon(Icons.article),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  String headline = _textController.text;
                  if (headline.isEmpty) {
                    _resultMessage = 'আগে একটা হেডলাইন লিখুন!';
                  } else {
                    _resultMessage = 'আপনার লেখা: "$headline"\n(অ্যানালাইসিস করা হচ্ছে...)';
                  }
                });
              },
              icon: const Icon(Icons.search),
              label: const Text('চেক করুন'),
            ),
            const SizedBox(height: 40),
            Text(
              _resultMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}