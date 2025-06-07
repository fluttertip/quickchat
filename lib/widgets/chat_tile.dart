import 'package:flutter/material.dart';
import '../models/user_model.dart';
import 'user_avatar.dart';

class ChatTile extends StatelessWidget {
  final UserModel user;
  final String lastMessage;
  final String time;

  const ChatTile({super.key, 
    required this.user,
    required this.lastMessage,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: UserAvatar(imageUrl: user.avatarUrl, isOnline: user.isOnline),
      title: Text(user.name),
      subtitle: Text(lastMessage, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Text(time, style: TextStyle(fontSize: 12, color: Colors.grey)),
      onTap: () => Navigator.pushNamed(context, '/chat'),
    );
  }
}
