import 'package:flutter/material.dart';

class WeekScreen extends StatelessWidget {
  final int week;
  final String? imagePath;

  WeekScreen({required this.week, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Week $week'),
      ),
      body: Center(
        child: imagePath != null
            ? Builder(
          builder: (context) {
            try {
              // Attempt to load the image
              return Image.asset(
                imagePath!,
                width: 300,
                height: 300,
              );
            } catch (e) {
              // Image could not be loaded
              return Text('No image for this week');
            }
          },
        )
            : Text('No image for this week'),
      ),
    );
  }
}
