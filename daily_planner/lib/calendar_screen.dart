import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calendar')),
      body: TableCalendar(
        firstDay: DateTime.utc(2020, 10, 16),
        lastDay: DateTime.utc(2030, 10, 16),
        focusedDay: _selectedDay,
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
          });
        },
      ),
    );
  }
}
