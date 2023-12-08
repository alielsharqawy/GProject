import 'package:flutter/material.dart';
import 'package:gproject/core/app_colors.dart';
import 'package:gproject/core/media_query_values.dart';
import 'package:gproject/core/style_manager.dart';
import 'package:gproject/view/screens/home_page.dart';
import 'package:gproject/view/screens/login/register_screen.dart';
import 'package:gproject/view/screens/reset_password/forget_password.dart';
import 'package:gproject/view/widgets/check_box.dart';
import 'package:gproject/view/widgets/custom_btn.dart';
import 'package:gproject/view/widgets/txt_form.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController passController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Login",
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
                  height: context.height * 0.03,
                ),
                Image.asset("assets/images/logo.png"),
                SizedBox(
                  height: context.height * 0.07,
                ),
                defualtFormField(
                    controller: emailController,
                    label: "Email Address",
                    type: TextInputType.visiblePassword,
                    validate: () {}),
                SizedBox(
                  height: context.height * 0.03,
                ),
                defualtFormField(
                    controller: passController,
                    label: "Password",
                    type: TextInputType.visiblePassword,
                    validate: () {}),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Row(
                  children: [
                    const CheckBoxClass(),
                    Text(
                      "Remember Me",
                      style: getRegularStyle(color: AppColors.black),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ForgetPasswordPage()),
                          );
                        },
                        child: Text(
                          "Forget Password",
                          style: getRegularStyle(color: AppColors.main),
                        ))
                  ],
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                CustomBtn(
                  lable: "Sign In",
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
                SizedBox(
                  height: context.height * 0.03,
                ),
                Divider(
                  color: AppColors.black,
                  thickness: 1,
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/images/face_icon.png"),
                    Image.asset("assets/images/gmail_icon.png"),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have Account?",
                        style: getRegularStyle(color: AppColors.black)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: getRegularStyle(color: AppColors.main),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
