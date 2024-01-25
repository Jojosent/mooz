import 'package:flutter/material.dart';

class ChatMessage {
  final String username;
  final String lastMessage;
  final String sender;
  final String time;
  final Color avatarColor; // Assuming you use color for avatar background

  ChatMessage({
    required this.username,
    required this.lastMessage,
    required this.sender,
    required this.time,
    required this.avatarColor,
  });
}

List<ChatMessage> messages = [
  ChatMessage(
      username: 'Виктор Власов',
      lastMessage: 'Уже сделал?',
      sender: 'Вы',
      time: 'Вчера',
      avatarColor: Colors.green),
];

Widget buildChatItem(ChatMessage message) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: message.avatarColor,
      child: Text(
        message.username.split(' ').map((e) => e[0]).take(2).join(),
        style: TextStyle(color: Colors.white),
      ),
    ),
    title: Text(message.username),
    subtitle: Text('${message.sender}: ${message.lastMessage}'),
    trailing: Text(message.time),
  );
}

Widget buildChatList() {
  return ListView.builder(
    itemCount: messages.length,
    itemBuilder: (context, index) {
      return buildChatItem(messages[index]);
    },
  );
}
