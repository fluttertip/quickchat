import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final messages = dummyMessages;

    return Scaffold(
      appBar: AppBar(
        title: Text("Chat with Alice"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 8),
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[messages.length - 1 - index];
                return ChatBubble(message: message);
              },
            ),
          ),
          _buildInputBar(context),
        ],
      ),
    );
  }

  Widget _buildInputBar(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.emoji_emotions_outlined), onPressed: () {}),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type a message...',
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                ),
              ),
            ),
            IconButton(icon: Icon(Icons.image), onPressed: () {}),
            IconButton(icon: Icon(Icons.mic), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
