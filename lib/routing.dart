import 'package:flutter/material.dart';
import 'week_screen.dart';

class Routing {
  static const String WEEK_1 = "/week/1";
  static const String WEEK_2 = "/week/2";
  static const String WEEK_3 = "/week/3";

  static Map<String, WidgetBuilder> routes(BuildContext context) {
    return <String, WidgetBuilder>{
      WEEK_1: (context) => WeekScreen(week: 1, imagePath: 'assets/week1_mockup.jpg'),
      WEEK_2: (context) => WeekScreen(week: 2, imagePath: 'assets/week2_mockup.jpg'),
      WEEK_3: (context) => WeekScreen(week: 3, imagePath: 'assets/week3_mockup.jpg'),
    };
  }
}
