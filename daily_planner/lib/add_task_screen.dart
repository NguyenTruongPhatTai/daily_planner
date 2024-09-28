import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _taskController = TextEditingController();
  String _selectedDay = 'Monday';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add New Task')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
              value: _selectedDay,
              items: <String>['Monday', 'Tuesday', 'Wednesday'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedDay = newValue!;
                });
              },
            ),
            TextField(
              controller: _taskController,
              decoration: InputDecoration(labelText: 'Task'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add task to the list
              },
              child: Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}
