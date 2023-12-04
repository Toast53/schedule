import 'package:flutter/material.dart';

class SchedulePlan extends StatelessWidget {
  final List<Map<String, dynamic>> weekList;

  SchedulePlan({required this.weekList});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          child: Text(
            'Schedule Plan',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        for (var week in weekList)
          ListTile(
            title: Text(week['title']),
            subtitle: Text(week['subtitle']),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, week['route']);
            },
          ),
      ],
    );
  }
}
