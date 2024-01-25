import 'package:flutter/material.dart';

class AppBarDefault extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  @override
  final Size preferredSize;

  AppBarDefault({
    Key? key,
    required this.title,
  })  : preferredSize = Size.fromHeight(100.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 100,
      title: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios_rounded,
                size: 19,
                color: Colors.white,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
