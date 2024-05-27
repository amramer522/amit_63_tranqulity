import 'package:amit_63_online/core/design/app_image.dart';
import 'package:amit_63_online/core/logic/cache_helper.dart';
import 'package:amit_63_online/core/logic/helper_methods.dart';
import 'package:amit_63_online/views/login.dart';
import 'package:flutter/material.dart';


class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentPage = 1;
  List<String> titles = [
    "Feel Free",
    "Ask For Anything",
    "Your Secert is Save",
  ];
  List<String> desc = [
    "because I'm the friendly chatbot here to assist you with anything you need.",
    "I'm your friendly neighborhood chatbot ready to assist you with any questions or concerns.",
    "Our platform prioritizes your privacy and security",
  ];
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .65,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    print(value);
                    currentPage = value + 1;
                    setState(() {});
                  },
                  itemBuilder: (context, index) => AppImage(
                        "on_boarding${index + 1}.jpg",
                        height: MediaQuery.of(context).size.height * .65,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                  itemCount: titles.length),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titles[currentPage - 1],
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 24),
                  Text(
                    desc[currentPage - 1],
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      if (currentPage != 3)
                        TextButton(
                            onPressed: () {
                              CacheHelper.setNotFirstTime();

                              navigateTo(LoginView(), keepHistory: false);
                            },
                            child: Text("Skip")),
                      Spacer(),
                      FloatingActionButton(
                        onPressed: () {
                          if (currentPage < 3) {
                            pageController.nextPage(duration: Duration(milliseconds: 600), curve: Curves.linear,);
                          } else {
                            CacheHelper.setNotFirstTime();
                            navigateTo(LoginView(), keepHistory: false);
                          }
                        },
                        child: AppImage(
                          "arrow_forward.png",
                          height: 32,
                          width: 32,),)],)],),)],),),);
  }
}
