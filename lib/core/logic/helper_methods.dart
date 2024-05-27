import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future navigateTo(
  Widget page, {
  bool keepHistory = true,
  bool isReplacement = false,
}) {
  if (isReplacement) {
    return Navigator.pushReplacement(
      navigatorKey.currentContext!,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
  return Navigator.pushAndRemoveUntil(
    navigatorKey.currentContext!,
    MaterialPageRoute(
      builder: (context) => page,
    ),
    (route) => keepHistory,
  );
}

enum MessageType { success, warning, error }

void showMessage(String msg, {MessageType messageType = MessageType.success}) {
  ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
    SnackBar(
      content: Text(msg),
      duration: Duration(seconds: 3),
      backgroundColor: messageType == MessageType.success
          ? Colors.green
          : messageType == MessageType.warning
              ? Colors.orange
              : Colors.red,
    ),
  );
}

Future<void> openUrl(String url) async {
  await launchUrl(Uri.parse(url)).catchError((ex){
    showMessage("Can't open the url",messageType: MessageType.error);
    return false;
  });
}
