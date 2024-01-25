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
          TextFieldWid(
            title: 'Чаты',
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 1,
            width: double.maxFinite,
            color: Colors.grey.withOpacity(0.2),
          ),
          SizedBox(
            height: 15,
          ),
          ListUser()
        ],
      ),
    );
  }
}
