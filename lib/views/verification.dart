import 'package:amit_63_online/core/design/app_button.dart';
import 'package:amit_63_online/core/design/app_image.dart';
import 'package:amit_63_online/core/design/app_otp.dart';
import 'package:flutter/material.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AppImage("otp.png", height: 220),
            const SizedBox(height: 24),
            const Text(
              "Verification",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Please enter the code sent on your phone.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Theme.of(context).primaryColor.withOpacity(.67)),
            ),
            const SizedBox(height: 33),
            AppOTP(),
            const SizedBox(height: 33),
            AppButton(
              onPressed: () {},
              text: "Verify",
            ),
          ],
        ),
      ),
    );
  }
}
