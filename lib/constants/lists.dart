import 'package:todo_app/constants/taskType.dart';
import 'package:todo_app/model/task.dart';

// const List<String> todos = ["Study Lessons", "Run 5K", "Go To Party"];
// const List<String> completed = ["Game Meetup", "Reading Book", "Learn Flutter"];

List<Task> todo = [
  Task(
      type: TaskType.note,
      title: "Study Lessons",
      description: "Study Comp110",
      isCompleted: false),
  Task(
      type: TaskType.calendar,
      title: "Run 5K",
      description: "Run 20 minutes ",
      isCompleted: false),
  Task(
      type: TaskType.contest,
      title: "Go To Party",
      description: "Have fun",
      isCompleted: false),

];

List<Task> completed = [
          Task(
      type: TaskType.contest,
      title: "Game Meetup",
      description: "Play game",
      isCompleted: false),
        Task(
      type: TaskType.calendar,
      title: "Reading Book",
      description: "have fun",
      isCompleted: false),
        Task(
      type: TaskType.note,
      title: "Learn Flutter",
      description: "Learn some flutter and push to github",
      isCompleted: false)
];
