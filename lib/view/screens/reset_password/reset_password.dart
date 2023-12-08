import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gproject/core/app_colors.dart';
import 'package:gproject/core/media_query_values.dart';
import 'package:gproject/core/style_manager.dart';
import 'package:gproject/view/screens/home_page.dart';
import 'package:gproject/view/widgets/custom_btn.dart';
import 'package:gproject/view/widgets/txt_form.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          "Reset Password",
          style: getHeadingStyle(
            color: AppColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.height * 0.07,
                ),
                defualtFormField(
                    controller: passController,
                    label: "New Password",
                    type: TextInputType.visiblePassword,
                    validate: () {}),
                SizedBox(
                  height: context.height * 0.01,
                ),
                Text(
                  "at least 8 digit and contain letter and special character",
                  style: getMediumStyle(color: AppColors.black),
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                defualtFormField(
                    controller: confirmPassword,
                    label: "Confirm Password",
                    type: TextInputType.visiblePassword,
                    validate: () {}),
                SizedBox(
                  height: context.height * 0.05,
                ),
                CustomBtn(
                  lable: "Reset Password",
                  height: context.height * 0.065,
                  width: context.width * 0.9,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  isOutlined: false,
                  backgroundColor: AppColors.main,
                  textColor: AppColors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
