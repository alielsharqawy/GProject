import 'package:flutter/material.dart';
import 'package:gproject/core/app_colors.dart';
import 'package:gproject/core/media_query_values.dart';
import 'package:gproject/core/style_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            "assets/images/home_profile.png",
          ),
          title: Text(
            "Good Morning\n Ahmed",
            style: getRegularStyle(color: AppColors.black),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 30),
              child: Icon(Icons.notifications),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.height * 0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade200,
                  ),
                  width: context.width * 0.9,
                  height: context.height * 0.05,
                  child: Row(children: [
                    const Icon(
                      Icons.location_on,
                    ),
                    Text(
                      "Mansoura,eg",
                      style: getRegularStyle(color: AppColors.black),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(Icons.date_range),
                    Text(
                      "Monday,June",
                      style: getRegularStyle(color: AppColors.black),
                    )
                  ]),
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  width: context.width * 0.9,
                  height: context.height * 0.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/images/clouds_home.png",
                      ),
                      Text(
                        "partly cloudy \n 20 c",
                        style: getRegularStyle(color: AppColors.White),
                      ),
                      Text(
                        "Humidity\n 62 %",
                        style: getRegularStyle(color: AppColors.White),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Text(
                  "Routine",
                  style: getHeadingStyle(color: AppColors.black),
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Stack(
                  children: [
                    Center(
                        child: Image.asset("assets/images/home_routine.png")),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 25),
                      child: Text(
                        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has",
                        style: getRegularStyle(
                          color: AppColors.White,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Text(
                  "Recommended Clothes",
                  style: getHeadingStyle(color: AppColors.black),
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade200,
                  ),
                  width: context.width * 0.9,
                  height: context.height * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Cool Wear \n More Option",
                        style: getRegularStyle(color: AppColors.black),
                      ),
                      Image.asset("assets/images/home_clothes.png"),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade200,
                  ),
                  width: context.width * 0.9,
                  height: context.height * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "heart Rate \n yesterday,was 75",
                        style: getRegularStyle(color: AppColors.black),
                      ),
                      const Icon(Icons.monitor_heart_rounded)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
