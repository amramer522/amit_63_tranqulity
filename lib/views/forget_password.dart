import 'package:amit_63_online/core/design/app_button.dart';
import 'package:amit_63_online/core/design/app_image.dart';
import 'package:amit_63_online/core/design/app_input.dart';
import 'package:amit_63_online/core/logic/helper_methods.dart';
import 'package:amit_63_online/views/verification.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AppImage(
              "forget_password.png",
              height: 220,
            ),
            const SizedBox(height: 24),
            const Text(
              "Forget Your Password",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 33),
            const AppInput(
              label: "PhoneNumber",
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16),
            AppButton(
              onPressed: () {
                navigateTo(VerificationView());
              },
              text: "Forget Password",
            ),
          ],
        ),
      ),
    );
  }
}
