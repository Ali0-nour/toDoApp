import 'package:flutter/material.dart';
import 'package:todo_list/scripFun/toDoMetodeNew.dart';
import 'package:todo_list/appColors.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

// Todo : func for chang value var date
dateTimeBar() {
  // DateTime timeNewDay = DateTime.now();
  String dayNew = 'Monday'; // just for new
  // print(dayNew);
  return dayNew;
}

// List<toDoMetode> todos = [];
// int todoNum = 1;

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Container(
            margin: EdgeInsets.only(left: 10),
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                  style: BorderStyle.solid,
                )),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
              ),
            ),
          ),
        ),
        title: Text(dateTimeBar()),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/notificationPage');
              },
              tooltip: 'Open notifications manger',
              icon: Icon(Icons.notifications_active)),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Todo',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          // ListView.builder(
          //     itemCount: todos.length,
          //     itemBuilder: (context, index) {
          //        setState(() {
          //       });
          //     })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/todoPageAdd');
        },
        tooltip: 'add todo',
        backgroundColor: AppColorSimple.primary,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
