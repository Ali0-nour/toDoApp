import 'package:flutter/material.dart';
import 'package:todo_list/appColors.dart';


class toDoMetode extends StatefulWidget {
  const toDoMetode({super.key});

  @override
  State<toDoMetode> createState() => _toDoMetodeState();
}
// for Checkbox value
bool checkBoxBool = false;
// main text
String primaText = 'how what is happing';


class _toDoMetodeState extends State<toDoMetode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.94,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Transform.scale(
              scale: 1.4,
              child: Checkbox(value: checkBoxBool,
                  checkColor: AppColorSimple.second,
                  activeColor: AppColorSimple.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  onChanged: (newValue) {
                  setState(() {
                    // todo : how this is work
                    checkBoxBool = newValue!;
                  });
              }),
            ),
            Padding(padding: EdgeInsets.all(2)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$primaText',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.3
                ),),
                Text('add button',style: TextStyle(
                  fontSize:12,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[700]
                ),)
              ],
            )
          ],
      ),
    );
  }
}
