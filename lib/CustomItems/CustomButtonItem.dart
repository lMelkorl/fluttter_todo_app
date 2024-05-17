import 'package:flutter/material.dart';

class ButtonItem extends StatefulWidget {
  const ButtonItem({super.key, required this.onPress, required this.title});
  final VoidCallback onPress;
  final String title;

  @override
  State<ButtonItem> createState() => ButtonItemState();
}

class ButtonItemState extends State<ButtonItem> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
        ),
        child: Text(widget.title,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)));
  }
}
