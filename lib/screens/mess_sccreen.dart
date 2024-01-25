import 'package:flutter/material.dart';
import 'package:mooz_test/widgets/app_bar_wid.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefault(
        title: 'UserName',
        online: true,
      ),
    );
  }
}
