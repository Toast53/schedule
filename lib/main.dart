import 'package:flutter/material.dart';
import 'schedule_plan.dart';
import 'routing.dart';
import 'week_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      routes: Routing.routes(context),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> weekList = [
    {
      "title": "Week 1",
      "subtitle": "Description for Week 1",
      "route": Routing.WEEK_1,
      "imagePath": 'assets/week1_mockup.jpg',
    },
    {
      "title": "Week 2",
      "subtitle": "Description for Week 2",
      "route": Routing.WEEK_2,
      "imagePath": 'assets/week2_mockup.jpg',
    },
    {
      "title": "Week 3",
      "subtitle": "Description for Week 3",
      "route": Routing.WEEK_3,
      "imagePath": 'assets/week3_mockup.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library App'),
      ),
      drawer: Drawer(
        child: SchedulePlan(weekList: weekList),
      ),
      body: Center(
        child: Text(
          'Welcome to the Library App!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
