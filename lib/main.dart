import 'package:flutter/material.dart';
import 'dart:math'; //Makes the brain work!

void main() => runApp(const MaterialApp(home: RubberDuckDebugger()));

class RubberDuckDebugger extends StatefulWidget {
  const RubberDuckDebugger({super.key});

  @override
  State<RubberDuckDebugger> createState() => _RubberDuckDebuggerState();
}

class _RubberDuckDebuggerState extends State<RubberDuckDebugger> {
  final TextEditingController _controller = TextEditingController();
  String _duckResponse = "Quack! Explain your code to me.";
  
  // The Duck's Knowledge Base
  final List<String> _duckWisdom = [
    "Have you tried restarting the emulator?",
    "Did you forget a semicolon?",
    "It's probably a nested Column issue.",
    "Maybe it's time for a coffee break?",
    "Did you run 'flutter clean' yet?",
    "The code is fine. The computer is just confused."
  ];

  void _getDuckAdvice() {
    if (_controller.text.isEmpty) return;
    setState(() {
      // Pick a random response from the list
      _duckResponse = _duckWisdom[Random().nextInt(_duckWisdom.length)];
      _controller.clear(); // Clear input after "listening"
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(title: const Text("Sonia's Digital Rubber Duck"), backgroundColor: Colors.orange),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("🦆", style: TextStyle(fontSize: 100)), // The "Image"
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.orange),
              ),
              child: Text(_duckResponse, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: "What is the error message?",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _getDuckAdvice,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text("Explain to Duck", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}