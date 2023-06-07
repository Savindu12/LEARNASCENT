import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class WeekCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return Center(
     child: Container(
       color: Colors.white,
         width: 350,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             DatePicker(
             DateTime(2023,05,29),//pass here the date which you need to start
             daysCount: 6,
             width: 50,
             height: 70,
             // showDay: true,
             dateTextStyle:
             const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
             // controller: _controller,
             initialSelectedDate: DateTime.now(),
             selectionColor: Colors.grey.shade500,
             selectedTextColor: Colors.white,
             onDateChange: (value) {
             },
           ),
          ],
         ),
        ),
     );
  }

}