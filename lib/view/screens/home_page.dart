import 'package:flutter/material.dart';
import 'package:gproject/core/app_colors.dart';
import 'package:gproject/core/style_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Text(
          "hello",
          style: getHeadingStyle(color: AppColors.black),
        ),
      ),
    );
  }
}
