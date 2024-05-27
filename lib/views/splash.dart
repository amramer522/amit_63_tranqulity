import 'dart:async';

import 'package:amit_63_online/core/logic/cache_helper.dart';
import 'package:amit_63_online/core/logic/helper_methods.dart';
import 'package:amit_63_online/views/login.dart';
import 'package:amit_63_online/views/on_boarding.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      navigateTo(
        CacheHelper.isFirstTime ? OnBoardingView() : LoginView(),
        keepHistory: false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElasticInDown(
          child: CircleAvatar(
            radius: 180,
            backgroundColor: Theme.of(context).primaryColor.withOpacity(.3),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Tranquility",
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: "Courgette",
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Together Towards Tranquility",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).primaryColor.withOpacity(.57),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
