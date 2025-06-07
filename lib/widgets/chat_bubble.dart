import 'package:flutter/material.dart';
import '../models/message_model.dart';

class ChatBubble extends StatelessWidget {
  final MessageModel message;

  const ChatBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final align = message.isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final color = message.isSentByMe
        ? Theme.of(context).colorScheme.primaryContainer
        : Theme.of(context).colorScheme.secondaryContainer;

    return Column(
      crossAxisAlignment: align,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          padding: EdgeInsets.all(12),
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            message.content,
            style: TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12, right: 12),
          child: Text(
            _formatTime(message.timestamp),
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
        )
      ],
    );
  }

  String _formatTime(DateTime time) {
    return "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}";
  }
}
