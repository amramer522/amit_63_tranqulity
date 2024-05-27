import 'package:amit_63_online/core/design/app_button.dart';
import 'package:amit_63_online/core/design/app_image.dart';
import 'package:amit_63_online/core/design/app_input.dart';
import 'package:amit_63_online/core/logic/helper_methods.dart';
import 'package:amit_63_online/core/logic/input_validator.dart';
import 'package:flutter/material.dart';

class SuggestionsView extends StatefulWidget {
  const SuggestionsView({Key? key}) : super(key: key);

  @override
  State<SuggestionsView> createState() => _SuggestionsViewState();
}

class _SuggestionsViewState extends State<SuggestionsView> {
  final subjectController = TextEditingController();
  final bodyController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Suggestions")),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              openUrl(
                "mailto:amramer622@gmail.com?subject=${subjectController.text}&body=${bodyController.text}",
              );
            },
            child: AppImage(
              "gmail.png",
              height: 60,
              width: 60,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          GestureDetector(
              onTap: () {
                openUrl("sms:01027545022");
              },
              child: AppImage(
                "whats_app.png",
                height: 60,
                width: 60,
              )),
        ],
      ),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppImage(
                "suggestion.png",
                height: 170,
                width: 170,
              ),
              SizedBox(height: 16),
              Text(
                "Tell Us How We Can Help",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 50),
              AppInput(
                label: "Subject",
                validator: (value) =>InputValidator.normalInput("Subject", value),
                controller: subjectController,
              ),
              AppInput(
                label: "body",
                controller: bodyController,
                isMultiLine: true,
                validator: (value) =>InputValidator.normalInput("Body", value, length: 10),
              ),
              AppButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print("Valid Data");
                    formKey.currentState!.reset();
                  } else {
                    print("Invalid Data");
                  }
                },
                text: "Send Message",
              ),
              SizedBox(height: 36),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Our Social Media Pages",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppImage(
                          "facebook.png",
                          height: 32,
                          width: 32,
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        GestureDetector(
                          onTap: () {
                            openUrl("https://www.instagram.com/amit_learning/?hl=en");
                          },
                          child: AppImage(
                            "instagram.png",
                            height: 32,
                            width: 32,
                          ),
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        GestureDetector(
                          onTap: () {
                            openUrl("https://www.linkedin.com/company/amit-learning/mycompany/");
                          },
                          child: AppImage(
                            "linkedin.png",
                            height: 32,
                            width: 32,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 24),
                    Text(
                      "or visit our website",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {
                        openUrl("https://amit-learning.com/");
                      },
                      child: AppImage(
                        "website.png",
                        height: 32,
                        width: 32,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
