import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/CustomItems/CustomButtonItem.dart';
import 'package:todo_app/CustomItems/CustomHeaderItem.dart';
import 'package:todo_app/CustomItems/CustomTodoItem.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/constants/lists.dart';
import 'package:todo_app/screens/addNewTask.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              backgroundColor: HexColor(bgColor),
              body: Column(
                children: [
                  //heading
                  const HeaderItem(
                      dateTitle: "28 February, Wednesday",
                      title: "All Todo List"),
                  //body
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: SingleChildScrollView(
                          child: ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: todo.length,
                        itemBuilder: (context, index) {
                          return TodoItem(task: todo[index]);
                        },
                      )),
                    ),
                  ),

                  //body2
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Completed",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                  ),
                  //body3
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: SingleChildScrollView(
                          child: ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: completed.length,
                        itemBuilder: (context, index) {
                          return TodoItem(task: completed[index]);
                        },
                      )),
                    ),
                  ),
                  ButtonItem(
                      onPress: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AddNewTaskScreen()));
                      },
                      title: "Add")
                ],
              )),
        ));
  }
}
