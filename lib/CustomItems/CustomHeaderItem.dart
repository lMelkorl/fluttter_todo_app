import 'package:flutter/material.dart';

class HeaderItem extends StatefulWidget {
  const HeaderItem({super.key, required this.dateTitle, required this.title});
  final String dateTitle;
  final String title;
  
  @override
  State<HeaderItem> createState() => _HeaderItemState();
}

class _HeaderItemState extends State<HeaderItem> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: deviceWidth,
      height: deviceHeight / 3,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://wallpapers.com/images/featured/ios-14-fnkg9z594gq55bfl.jpg")
              // image: NetworkImage("https://images.wallpapersden.com/image/download/swirl-aesthetic_bGxlamWUmZqaraWkpJRoaWllrWZpaWU.jpg")),
              )),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child:Text(
              widget.dateTitle,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              widget.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
