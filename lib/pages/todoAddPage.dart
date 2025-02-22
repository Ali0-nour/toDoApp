import 'package:flutter/material.dart';
import 'package:todo_list/appColors.dart';
import 'package:todo_list/pages/homePageTodo.dart';
import 'package:todo_list/scripFun/toDoMetodeNew.dart';

class todoPageAddList extends StatefulWidget {
  const todoPageAddList({super.key});

  @override
  State<todoPageAddList> createState() => _todoPageAddListState();
}

class _todoPageAddListState extends State<todoPageAddList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColorSimple.backgrondAddPage,
          title: Text('New Task'),
          centerTitle: true,
          leading: TextButton(
            onPressed: () {},
            child: Text('cancel'),
          ),
          actions: [
            Container(
              child: TextButton(onPressed: () {}, child: Text('done')),
            ),
          ],
        ),
        body: Container(
          color: AppColorSimple.backgrondAddPage,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title'),
                  Container(
                    child: TextField(),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
