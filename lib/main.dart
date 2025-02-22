import 'package:flutter/material.dart';
import 'package:todo_list/pages/homePageTodo.dart';
import 'package:todo_list/pages/notificationsPage.dart';
import 'package:todo_list/pages/todoAddPage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: homePage(),
      routes: {
        '/notificationPage': (context) => notificationPageMange(),
        '/todoPageAdd': (context) => todoPageAddList()
      },
    );
  }
}
