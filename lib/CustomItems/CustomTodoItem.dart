import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/constants/taskType.dart';
import 'package:todo_app/model/task.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({
    super.key,
    required this.task,
  });
  final Task task;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    bool widgetIsCompleted = widget.task.isCompleted;
    return Card(
      color: widgetIsCompleted ? Colors.grey : Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.task.type == TaskType.note
                ? Image.network(
                    "https://cdn-icons-png.flaticon.com/512/1672/1672225.png",
                    width: 45)
                : widget.task.type == TaskType.calendar
                    ? Image.network(
                        "https://cdn-icons-png.flaticon.com/512/4320/4320177.png",
                        width: 45)
                    : Image.network(
                        "https://cdn-icons-png.flaticon.com/512/5520/5520928.png",
                        width: 45),
            Expanded(
              child: Column(
                children: [
                  Text(
                    widget.task.title,
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        decoration: widgetIsCompleted
                            ? TextDecoration.lineThrough
                            : TextDecoration.none),
                  ),
                  Text(
                    widget.task.description,
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        decoration: widgetIsCompleted
                            ? TextDecoration.lineThrough
                            : TextDecoration.none),
                  ),
                ],
              ),
            ),
            Checkbox(
              value: isChecked,
              onChanged: (bool? val) {
                setState(() {
                  widget.task.isCompleted = !widget.task.isCompleted;
                  isChecked = val!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
