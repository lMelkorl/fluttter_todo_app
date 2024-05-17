import 'package:flutter/material.dart';

class InputItem extends StatefulWidget {
  const InputItem({super.key, required this.title});
  final String title;
  @override
  State<InputItem> createState() => _InputItemState();
}

class _InputItemState extends State<InputItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(widget.title,style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration:
                  InputDecoration(filled: true, fillColor: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
