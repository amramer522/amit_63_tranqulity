import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AppOTP extends StatelessWidget {
  const AppOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      backgroundColor: Colors.transparent,
      keyboardType: TextInputType.number,
      cursorColor: Theme.of(context).primaryColor,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        selectedColor: Theme.of(context).primaryColor,
        inactiveColor: Theme.of(context).primaryColor.withOpacity(.29),
        activeColor: Theme.of(context).primaryColor,
        fieldWidth: 70,
        fieldHeight: 60,
        borderRadius: BorderRadius.circular(8),
      ),
      length: 4,
    );
  }
}
