import 'package:flutter/material.dart';

class notificationPageMange extends StatefulWidget {
  const notificationPageMange({super.key});

  @override
  State<notificationPageMange> createState() => _notificationPageMangeState();
}

class _notificationPageMangeState extends State<notificationPageMange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications'),centerTitle: true,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.comments_disabled,
              size: 60,
              color: Colors.red[400],
            ),
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(right: 20,left: 20,top:20),
              child: Text(
                'Notification page is empty',
                style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic),
              ))
        ],
      ),
    );
  }
}
