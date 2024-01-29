import 'package:flutter/material.dart';
import 'package:mooz_test/widgets/text_field_wid.dart';

import '../widgets/list_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TextFieldWid(
            title: 'Чаты',
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 1,
            width: double.maxFinite,
            color: Colors.grey.withOpacity(0.2),
          ),
          const SizedBox(
            height: 15,
          ),
          const ListUser()
        ],
      ),
    );
  }
}
