import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gproject/core/app_colors.dart';
import 'package:gproject/core/media_query_values.dart';
import 'package:gproject/core/style_manager.dart';
import 'package:gproject/view/screens/reset_password/verification_page.dart';
import 'package:gproject/view/widgets/custom_btn.dart';
import 'package:gproject/view/widgets/txt_form.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passController = TextEditingController();
  void _messagebox() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerificationPage()),
                  );
                },
                child: Text(
                  "go to OTP",
                  style: getRegularStyle(color: AppColors.main),
                ),
              )
            ],
            title: Text(
              "Check your gmail we have sent password recovery code",
              style: getRegularStyle(color: AppColors.black),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          "Forget Password",
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
              children: [
                SizedBox(
                  height: context.height * 0.07,
                ),
                Text(
                  "Enter your email address to reset your password",
                  style: getSemiBoldStyle(color: AppColors.black),
                ),
                SizedBox(
                  height: context.height * 0.04,
                ),
                defualtFormField(
                    controller: passController,
                    label: "Email Address",
                    type: TextInputType.visiblePassword,
                    validate: () {}),
                SizedBox(
                  height: context.height * 0.05,
                ),
                CustomBtn(
                  lable: "Reset Password",
                  height: context.height * 0.065,
                  width: context.width * 0.9,
                  onTap: _messagebox,
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
