import 'dart:html';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyAppState  createState() => _MyAppState();
}
  @override
class _MyAppState extends State<MyApp>{
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: TableCalendar(
            firstDay: DateTime.utc(2010,10,20),
            lastDay: DateTime.utc(2035,10,20),
            focusedDay: DateTime.now(),
            headerVisible: true,
            daysOfWeekVisible: true,
            sixWeekMonthsEnforced: true,
            headerStyle: HeaderStyle(titleTextStyle: TextStyle(fontSize:20, color: Colors.deepPurple, fontWeight: FontWeight.w800)),
            calendarStyle: CalendarStyle(todayTextStyle: TextStyle(fontSize:20, color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
