import 'package:amit_63_online/core/design/app_button.dart';
import 'package:amit_63_online/core/design/app_image.dart';
import 'package:amit_63_online/core/logic/helper_methods.dart';
import 'package:amit_63_online/core/logic/input_validator.dart';
import 'package:amit_63_online/views/forget_password.dart';
import 'package:flutter/material.dart';

import '../core/design/app_input.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 52),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const AppImage(
                  "login.png",
                  height: 220,
                ),
                const SizedBox(height: 16),
                const Text(
                  "Welcome To",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Tranquility",
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: "Courgette",
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                AppInput(
                  label: "PhoneNumber",
                  validator: InputValidator.phone,
                  keyboardType: TextInputType.phone,
                ),
                const AppInput(
                  label: "Password",
                  validator: InputValidator.password,
                  isPassword: true,
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () {
                      navigateTo(const ForgetPasswordView());
                    },
                    child: const Text("Forget Password?"),
                  ),
                ),
                const SizedBox(height: 24),
                AppButton(
                  onPressed: () {
                    if(formKey.currentState!.validate())
                      {

                      }
                  },
                  text: "Log In",
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account ?",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    TextButton(onPressed: () {}, child: const Text("Sign up"))
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
