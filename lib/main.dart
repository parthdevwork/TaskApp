import 'package:flutter/material.dart';
import 'package:task_app/src/constants/colors.dart';
import 'package:task_app/src/view/reservations_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primary,
        useMaterial3: true,
      ),
      home: ReservationsScreen(),
    );
  }
}
