import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';
import '../data/dummy_data.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dummyUsers.length,
        itemBuilder: (context, index) {
          final user = dummyUsers[index];
          return ChatTile(
            user: user,
            lastMessage: 'Hey! This is a mock message.',
            time: '2:30 PM',
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/chat');
        },
        child: Icon(Icons.chat),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (i) {
          if (i == 0) return;
          if (i == 1) context.go('/chat');
          if (i == 2) context.go('/profile');
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
