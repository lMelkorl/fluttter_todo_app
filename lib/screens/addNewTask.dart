import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/CustomItems/CustomButtonItem.dart';
import 'package:todo_app/CustomItems/CustomCategoryItem.dart';
import 'package:todo_app/CustomItems/CustomInputItem.dart';
import 'package:todo_app/constants/colors.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(bgColor),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: deviceWidth,
                height: deviceHeight / 11,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://wallpapers.com/images/featured/ios-14-fnkg9z594gq55bfl.jpg")
                        // image: NetworkImage("https://images.wallpapersden.com/image/download/swirl-aesthetic_bGxlamWUmZqaraWkpJRoaWllrWZpaWU.jpg")),
                        )),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 35,
                        )),
                    const Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Add New Task",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ]),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Text(
                  "Task Title",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  decoration:
                      InputDecoration(filled: true, fillColor: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Category",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    CategoryItem(
                        iconUrl:
                            "https://cdn-icons-png.flaticon.com/512/887/887997.png"),
                    CategoryItem(
                        iconUrl:
                            "https://cdn-icons-png.flaticon.com/512/2331/2331846.png"),
                    CategoryItem(
                        iconUrl:
                            "https://cdn-icons-png.flaticon.com/512/3557/3557574.png")
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    InputItem(title: "Date"),
                    InputItem(title: "Time"),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text("Notes",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: SizedBox(
                    height: 200,
                    child: TextField(
                      expands: true,
                      maxLines: null,
                      decoration: InputDecoration(
                          filled: true, fillColor: Colors.white, isDense: true),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: ButtonItem(onPress: () {}, title: "Save"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
