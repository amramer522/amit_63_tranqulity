import 'package:amit_63_online/core/design/app_image.dart';
import 'package:amit_63_online/core/logic/helper_methods.dart';
import 'package:amit_63_online/views/about_us.dart';
import 'package:amit_63_online/views/home/pages/chats.dart';
import 'package:amit_63_online/views/home/pages/profile.dart';
import 'package:amit_63_online/views/home/pages/quotes.dart';
import 'package:amit_63_online/views/login.dart';
import 'package:flutter/material.dart';

import '../assistant.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> icons = [
    "chats.svg",
    "quotes.svg",
    "profile.svg",
  ];
  List<String> titles = ["Chats", "Quotes", "Profile"];
  List<Widget> pages = [ChatsPage(), QuotesPage(), ProfilePage()];

  int currentIndex = 0;

  bool isEasyLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentIndex == 2 ? "Edit Profile" : titles[currentIndex]),
      ),
      extendBodyBehindAppBar: currentIndex == 1,
      body: pages[currentIndex],
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 31),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(25),
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    ClipOval(
                      child: AppImage(
                        profileImage,
                        height: 160,
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Soso",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "01027545631",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                navigateTo(AboutUsView());
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16).copyWith(
                  bottom: 16,
                ),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: Theme.of(context).primaryColor.withOpacity(.1), borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    AppImage(
                      "about_us.svg",
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 2.5),
                    Text(
                      "About Us",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: ()async {
                //open url
               await openUrl("https://play.google.com/store/apps/details?id=com.playrix.fishdomdd.gplay&hl=ar");

              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16).copyWith(
                  bottom: 16,
                ),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: Theme.of(context).primaryColor.withOpacity(.1), borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    AppImage(
                      "rate.svg",
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 2.5),
                    Text(
                      "Rate Our App",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                navigateTo(AboutUsView());
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16).copyWith(
                  bottom: 16,
                ),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: Theme.of(context).primaryColor.withOpacity(.1), borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    AppImage(
                      "suggestions.svg",
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 2.5),
                    Text(
                      "Suggestions",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16).copyWith(
                bottom: 16,
              ),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Theme.of(context).primaryColor.withOpacity(.1), borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  AppImage(
                    "easy_login.svg",
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(width: 2.5),
                  Expanded(
                    child: Text(
                      "Enable Easy Login",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    height: 25,
                    width: 42,
                    child: Switch(
                      value: isEasyLogin,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (value) {
                        print(value);
                        isEasyLogin = value;
                        setState(() {

                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                navigateTo(LoginView(),keepHistory: false);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16).copyWith(
                  bottom: 16,
                ),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: Color(0xffFF3A3A).withOpacity(.1), borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    AppImage(
                      "logout.svg",
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 2.5),
                    Text(
                      "Logout",
                      style: TextStyle(fontSize: 16, color: Color(0xffF60000)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateTo(AssistantView());
        },
        child: AppImage(
          "chat_bot.svg",
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          print(value);
          currentIndex = value;
          setState(() {});
        },
        items: List.generate(
          icons.length,
          (index) => BottomNavigationBarItem(
              icon: AppImage(
                icons[index],
                color: Colors.white.withOpacity(.3),
              ),
              activeIcon: AppImage(icons[index], color: Colors.white),
              label: titles[index]),
        ),
      ),
    );
  }
}
