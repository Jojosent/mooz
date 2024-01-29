import 'package:flutter/material.dart';
import 'package:mooz_test/screens/home_page.dart';

class AppBarDefault extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  @override
  final Size preferredSize;
  final bool online;

  AppBarDefault({
    Key? key,
    required this.title,
    this.online = true,
  })  : preferredSize = Size.fromHeight(100.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 100,
      title: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisSize: MainAxisSize.min, // Prevent the Row from expanding
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                size: 19,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Image.asset('img/avatar.png'),
            const SizedBox(
              width: 7,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  online ? 'online' : 'offline',
                  style: const TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5e7a90),
                    height: 15 / 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
