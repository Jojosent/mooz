import 'package:flutter/material.dart';

class TextFieldWid extends StatefulWidget {
  final String title;
  const TextFieldWid({super.key, required this.title});

  @override
  State<TextFieldWid> createState() => _TextFieldWidState();
}

class _TextFieldWidState extends State<TextFieldWid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontFamily: "Gilroy",
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Color(0xff2b333e),
              height: 39 / 32,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Поиск',
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              filled: true,
              fillColor: Colors.blue.withOpacity(0.1),
              contentPadding: EdgeInsets.all(8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
