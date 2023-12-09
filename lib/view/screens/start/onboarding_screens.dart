import 'package:flutter/material.dart';
import 'package:gproject/Model/onboardind_data.dart';
import 'package:gproject/core/app_colors.dart';
import 'package:gproject/core/media_query_values.dart';
import 'package:gproject/core/style_manager.dart';
import 'package:gproject/view/screens/login/login_screen.dart';
import 'package:gproject/view/widgets/custom_btn.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onboarding,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Column(
                  children: [
                    SizedBox(
                      height: context.height * 0.3,
                    ),
                    Stack(children: [
                      Image.asset("assets/images/onbcircle.png"),
                      Positioned(
                        left: context.width * 0.01,
                        bottom: context.height * 0.0,
                        top: context.height * 0.01,
                        child: Image.asset(
                          contents[i].image,
                          height: context.height * 0.9,
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: context.height * 0.02,
                    ),
                    Text(contents[i].title,
                        style: getHeadingStyle(color: AppColors.White)),
                    SizedBox(
                      height: context.height * 0.01,
                    ),
                    Text(
                      contents[i].description,
                      textAlign: TextAlign.center,
                      style: getRegularStyle(color: AppColors.White),
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
              (index) => buildDot(index, context),
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(40),
            width: double.infinity,
            child: CustomBtn(
              lable: currentIndex == contents.length - 1 ? "Continue" : "Next",
              height: context.height * 0.065,
              width: context.width * 0.9,
              onTap: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginScreen(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration: const Duration(milliseconds: 50),
                  curve: Curves.bounceIn,
                );
              },
              isOutlined: false,
              backgroundColor: AppColors.White,
              textColor: AppColors.black,
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: context.height * 0.01,
      width:
          currentIndex == index ? context.width * 0.12 : context.width * 0.05,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? AppColors.White : AppColors.grey,
      ),
    );
  }
}
