import 'package:amit_63_online/core/design/app_image.dart';
import 'package:flutter/material.dart';

class WhatsAppView extends StatefulWidget {
  const WhatsAppView({Key? key}) : super(key: key);

  @override
  State<WhatsAppView> createState() => _WhatsAppViewState();
}

class _WhatsAppViewState extends State<WhatsAppView> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: AppImage("search.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: AppImage("more.svg"),
          )
        ],
        title: Text(
          "WhatsApp",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff9EA2A6)),
        ),
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            TabBar(
              dividerHeight: 0,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 4,
              indicatorColor: Color(0xff08B09E),
              controller: tabController,
              labelColor: Color(0xff08B09E),
              unselectedLabelColor: Color(0xff9EA2A6),
              unselectedLabelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              tabs: [
                AppImage("camera2.svg"),
                Tab(text: "Chats"),
                Tab(text: "STATUS"),
                Tab(text: "CALLS"),
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                padding: EdgeInsets.symmetric(vertical: 16),
                separatorBuilder: (context, index) => SizedBox(height: 2),
                itemBuilder: (context, index) => ListTile(
                  onTap: () {

                  },
                  dense: true,
                  horizontalTitleGap: 10,
                  splashColor: Color(0xff08B09E).withOpacity(.1),
                  titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                  // contentPadding: EdgeInsets.zero,
                  leading: ClipOval(
                    child: AppImage(
                      "https://www.bentbusinessmarketing.com/wp-content/uploads/2013/02/35844588650_3ebd4096b1_b-1024x683.jpg",
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    "Amr Bakr",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    "Hello World",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xff9EA2A6),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Text(
                    "Hello World",
                    // maxLines: 1,
                    style: TextStyle(
                      color: Color(0xff9EA2A6),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
