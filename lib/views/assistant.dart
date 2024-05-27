import 'package:amit_63_online/core/design/app_button.dart';
import 'package:amit_63_online/core/design/app_image.dart';
import 'package:flutter/material.dart';

import '../core/design/app_input.dart';

class AssistantView extends StatelessWidget {
  const AssistantView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsetsDirectional.only(top: 106, bottom: 23, start: 20, end: 20),
              height: 399,
              child: Column(
                children: [
                  AppImage(
                    "chat_bot.svg",
                    color: Theme.of(context).primaryColor,
                    height: 157,
                    width: 157,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Hey!",
                    style: TextStyle(
                      fontSize: 50,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "I’am your Personal Assistant",
                    style: TextStyle(
                      fontSize: 24,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              color: Theme.of(context).primaryColor.withOpacity(.15),
            ),
            SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Make New Chat",
                    style: TextStyle(
                      fontSize: 24,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 16),
                  AppInput(
                    label: 'Title',
                    hint: "Enter The Title Of Chat",
                  ),
                  SizedBox(height: 8),
                  AppButton(
                    onPressed: () {},
                    text: "Start Chat",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
