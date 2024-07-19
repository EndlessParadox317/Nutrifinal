import 'package:flutter/material.dart';
import 'package:nutricare/AI%20Chatbot/chatbotmain.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _result = '';

  void _showChatbotDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Chatbot'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Hello! How can I help you?'),
            ],
          ),actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          ),
        ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NutriCare'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Handle the "+" button press here
            },
          ),
        ],
        bottom: PreferredSize( // Correctly placed within AppBar
          preferredSize: const Size.fromHeight(40.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Food eaten today:',
              style: TextStyle(
                color: Color(0xFF2abca4),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_result, style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: FloatingActionButton(
              onPressed: () {
                chatbotmain();
              },
              child: const Icon(Icons.chat),
            ),
          ),
        ],
      ),
    );
  }
}