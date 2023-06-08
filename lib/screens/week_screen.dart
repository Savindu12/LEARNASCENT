import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageScreen> {
  final CalendarWeekController _controller = CalendarWeekController();

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _controller.jumpToDate(DateTime.now());
            setState(() {});
          },
          child: const Icon(Icons.today),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
          title: const Text('CalendarWeek'),
        ),
        body: Column(children: [
          Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 1)
              ]),
              child: CalendarWeek(
                controller: _controller,
                height: 100,
                showMonth: true,
                minDate: DateTime.now().add(
                  const Duration(days: -365),
                ),
                maxDate: DateTime.now().add(
                  const Duration(days: 365),
                ),
                onDatePressed: (DateTime datetime) {
                  // Do something
                  setState(() {});
                },
                onDateLongPressed: (DateTime datetime) {
                  // Do something
                },
                onWeekChanged: () {
                  // Do something
                },
                monthViewBuilder: (DateTime time) => Align(
                  alignment: FractionalOffset.center,
                  child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        DateFormat.yMMMM().format(time),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                      )),
                ),
                decorations: [
                  DecorationItem(
                      decorationAlignment: FractionalOffset.bottomRight,
                      date: DateTime.now(),
                      decoration: const Icon(
                        Icons.today,
                        color: Colors.blue,
                      )),
                  DecorationItem(
                      date: DateTime.now().add(const Duration(days: 3)),
                      decoration: const Text(
                        'Holiday',
                        style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                ],
              )),
          Expanded(
            child: Center(
              child: Text(
                '${_controller.selectedDate.day}/${_controller.selectedDate.month}/${_controller.selectedDate.year}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
          )
        ]),
      );
}
