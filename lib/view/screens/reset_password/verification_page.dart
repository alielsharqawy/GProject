// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:gproject/core/app_colors.dart';
import 'package:gproject/core/media_query_values.dart';
import 'package:gproject/core/style_manager.dart';
import 'package:gproject/view/screens/reset_password/reset_password.dart';
import 'package:gproject/view/widgets/custom_btn.dart';
import 'package:gproject/view/widgets/otp_form.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});
  static String id = 'VerificationPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Text(
              'OTP Verification',
              style: getHeadingStyle(color: AppColors.black),
            ),
            SizedBox(
              height: context.height * 0.04,
            ),
            Text(
              'Please check your email to see the verification code',
              textAlign: TextAlign.center,
              style: getSemiBoldStyle(color: AppColors.black),
            ),
            SizedBox(
              height: context.height * 0.05,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OtpForm(),
                OtpForm(),
                OtpForm(),
                OtpForm(),
              ],
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            CustomBtn(
              lable: "verify",
              height: context.height * 0.065,
              width: context.width * 0.9,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ResetPasswordPage()),
                );
              },
              isOutlined: false,
              backgroundColor: AppColors.main,
              textColor: AppColors.black,
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Resend Password",
                    style: getRegularStyle(color: AppColors.black)),
                const Spacer(
                  flex: 2,
                ),
                Text(
                  "00.30",
                  style: getRegularStyle(color: AppColors.main),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
