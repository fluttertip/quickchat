import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/user_avatar.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    final user = dummyUsers[0];
    return Scaffold(
      appBar: AppBar(title: Text('Profile & Settings')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            UserAvatar(
              imageUrl: user.avatarUrl,
              isOnline: user.isOnline,
              radius: 40,
            ),
            SizedBox(height: 12),
            Text(user.name, style: Theme.of(context).textTheme.titleLarge),
            Text('Online', style: TextStyle(color: Colors.green)),
            Divider(height: 40),
            // SwitchListTile(
            //   value: isDark,
            //   onChanged: (val) => setState(() => isDark = val),
            //   title: Text('Dark Theme'),
            //   secondary: Icon(Icons.dark_mode),
            // ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('App Info'),
              subtitle: Text('QuickChat v1.0 (MVP)'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () =>
                  Navigator.popUntil(context, ModalRoute.withName('/')),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        onTap: (i) {
          if (i == 0) context.go('/home');
          if (i == 1) context.go('/chat');
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
