import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isOnline;
  final double radius;

  const UserAvatar({super.key, 
    required this.imageUrl,
    required this.isOnline,
    this.radius = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundImage: NetworkImage(imageUrl),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: radius * 0.4,
            height: radius * 0.4,
            decoration: BoxDecoration(
              color: isOnline ? Colors.green : Colors.grey,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        )
      ],
    );
  }
}
