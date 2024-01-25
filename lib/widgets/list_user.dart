import 'package:flutter/material.dart';

class ListUser extends StatefulWidget {
  const ListUser({super.key});

  @override
  State<ListUser> createState() => _ListUserState();
}

class _ListUserState extends State<ListUser> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            16,
            (int index) {
              return Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('img/avatar.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Виктор Власов",
                              style: const TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff000000),
                                height: 18 / 15,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Я готов",
                              style: const TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff5e7a90),
                                height: 15 / 12,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 1,
                      width: double.maxFinite,
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
