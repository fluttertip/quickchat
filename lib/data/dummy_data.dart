import '../models/user_model.dart';
import '../models/message_model.dart';

final List<UserModel> dummyUsers = [
  UserModel(
    id: '1',
    name: 'Alice Johnson',
    avatarUrl: 'https://randomuser.me/api/portraits/women/1.jpg',
    isOnline: true,
  ),
  UserModel(
    id: '2',
    name: 'Bob Smith',
    avatarUrl: 'https://randomuser.me/api/portraits/men/2.jpg',
    isOnline: false,
  ),
  UserModel(
    id: '3',
    name: 'Charlie Brown',
    avatarUrl: 'https://randomuser.me/api/portraits/men/3.jpg',
    isOnline: true,
  ),
  UserModel(
    id: '4',
    name: 'Diana Prince',
    avatarUrl: 'https://randomuser.me/api/portraits/women/4.jpg',
    isOnline: false,
  ),

  UserModel(
    id: '5',
    name: 'Ethan Hunt',
    avatarUrl: 'https://randomuser.me/api/portraits/men/5.jpg',
    isOnline: true,
  ),

  UserModel(
    id: '6',
    name: 'Fiona Gallagher',
    avatarUrl: 'https://randomuser.me/api/portraits/women/6.jpg',
    isOnline: false,
  ),

  UserModel(
    id: '7',
    name: 'George Costanza',
    avatarUrl: 'https://randomuser.me/api/portraits/men/7.jpg',
    isOnline: true,
  ),

  UserModel(
    id: '8',
    name: 'Hannah Montana',
    avatarUrl: 'https://randomuser.me/api/portraits/women/8.jpg',
    isOnline: false,
  ),

  UserModel(
    id: '9',
    name: 'Ian Malcolm',
    avatarUrl: 'https://randomuser.me/api/portraits/men/9.jpg',
    isOnline: true,
  ),

  UserModel(
    id: '10',
    name: 'Julia Child',
    avatarUrl: 'https://randomuser.me/api/portraits/women/10.jpg',
    isOnline: false,
  ),

  UserModel(
    id: '11',
    name: 'Kevin Hart',
    avatarUrl: 'https://randomuser.me/api/portraits/men/11.jpg',
    isOnline: true,
  ),

  UserModel(
    id: '12',
    name: 'Laura Croft',
    avatarUrl: 'https://randomuser.me/api/portraits/women/12.jpg',
    isOnline: false,
  ),

  UserModel(
    id: '13',
    name: 'Mike Wazowski',
    avatarUrl: 'https://randomuser.me/api/portraits/men/13.jpg',
    isOnline: true,
  ),

  UserModel(
    id: '14',
    name: 'Nina Simone',
    avatarUrl: 'https://randomuser.me/api/portraits/women/14.jpg',
    isOnline: false,
  ),
];

final List<MessageModel> dummyMessages = [
  MessageModel(
    id: 'm1',
    senderId: '1',
    content: 'Hey, how are you?',
    timestamp: DateTime.now().subtract(Duration(minutes: 5)),
    isSentByMe: false,
    isSeen: true,
  ),
  MessageModel(
    id: 'm2',
    senderId: 'me',
    content: 'I\'m good! How about you?',
    timestamp: DateTime.now().subtract(Duration(minutes: 3)),
    isSentByMe: true,
    isSeen: true,
  ),
  MessageModel(
    id: 'm3',
    senderId: '1',
    content: 'Just working on some projects.',
    timestamp: DateTime.now().subtract(Duration(minutes: 2)),
    isSentByMe: false,
    isSeen: true,
  ),
  MessageModel(
    id: 'm4',
    senderId: 'me',
    content: 'Sounds great! Let\'s catch up later.',
    timestamp: DateTime.now().subtract(Duration(minutes: 1)),
    isSentByMe: true,
    isSeen: true,
  ),
  MessageModel(
    id: 'm5',
    senderId: '2',
    content: 'Did you finish the report?',
    timestamp: DateTime.now().subtract(Duration(hours: 1)),
    isSentByMe: false,
    isSeen: true,
  ),

  MessageModel(
    id: 'm6',
    senderId: 'me',
    content: 'Yes, I sent it this morning.',
    timestamp: DateTime.now().subtract(Duration(hours: 1, minutes: 5)),
    isSentByMe: true,
    isSeen: true,
  ),
  MessageModel(
    id: 'm7',
    senderId: '3',
    content: 'Let\'s meet for lunch tomorrow?',
    timestamp: DateTime.now().subtract(Duration(days: 1)),
    isSentByMe: false,
    isSeen: true,
  ),
  MessageModel(
    id: 'm8',
    senderId: 'me',
    content: 'Sure, what time?',
    timestamp: DateTime.now().subtract(Duration(days: 1, hours: 1)),
    isSentByMe: true,
    isSeen: true,
  ),
  MessageModel(
    id: 'm9',
    senderId: '4',
    content: 'Can you review my code?',
    timestamp: DateTime.now().subtract(Duration(days: 2)),
    isSentByMe: false,
    isSeen: true,
  ),
  MessageModel(
    id: 'm10',
    senderId: 'me',
    content: 'Of course, send it over.',
    timestamp: DateTime.now().subtract(Duration(days: 2, hours: 1)),
    isSentByMe: true,
    isSeen: true,
  ),
  MessageModel(
    id: 'm11',
    senderId: '5',
    content: 'Are you coming to the party?',
    timestamp: DateTime.now().subtract(Duration(days: 3)),
    isSentByMe: false,
    isSeen: true,
  ),
  MessageModel(
    id: 'm12',
    senderId: 'me',
    content: 'Yes, I\'ll be there!',
    timestamp: DateTime.now().subtract(Duration(days: 3, hours: 2)),
    isSentByMe: true,
    isSeen: true,
  ),
  MessageModel(
    id: 'm13',
    senderId: '6',
    content: 'Did you see the latest episode?',
    timestamp: DateTime.now().subtract(Duration(days: 4)),
    isSentByMe: false,
    isSeen: true,
  ),
  MessageModel(
    id: 'm14',
    senderId: 'me',
    content: 'Yes, it was amazing!',
    timestamp: DateTime.now().subtract(Duration(days: 4, hours: 3)),
    isSentByMe: true,
    isSeen: true,
  ),
];
