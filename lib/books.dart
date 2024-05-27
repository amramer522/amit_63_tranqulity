import 'package:amit_63_online/book_details.dart';
import 'package:amit_63_online/core/design/app_image.dart';
import 'package:amit_63_online/core/logic/helper_methods.dart';
import 'package:flutter/material.dart';

class BooksView extends StatefulWidget {
  const BooksView({Key? key}) : super(key: key);

  @override
  State<BooksView> createState() => _BooksViewState();
}

class _BooksViewState extends State<BooksView> {
  final list = [
    BookModel(
        title: "الداء والدواء",
        desc: "كتاب في علم التفسير وقواعد التفسير الصحيح",
        image: "https://www.noor-book.com/publice/covers_cache_webp/5/6/f/1/37c0e52fcb6f1d3f8d7171731c72f1fc.png.webp"),
    BookModel(
        title: "علم التفسير وقواعد التفسير الصحيح",
        desc: "كتاب في علم التفسير وقواعد التفسير الصحيح",
        image: "https://www.noor-book.com/publice/covers_cache_webp/2/d/1/a/b3d5a2d229d1a5d57ad502c0e61e1b58.jpg.webp"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      body: DefaultTabController(
        length: 10,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff333333), boxShadow: [BoxShadow(offset: Offset(0, 4), blurRadius: 4, color: Colors.black.withOpacity(.25))]),
              child: SafeArea(
                child: TabBar(
                  dividerHeight: 0,
                  unselectedLabelColor: Colors.white,
                  labelPadding: EdgeInsets.symmetric(horizontal: 16),
                  labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  unselectedLabelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  onTap: (value) {
                    print(value);
                  },
                  padding: EdgeInsetsDirectional.only(start: 16, top: 22, bottom: 22),
                  tabAlignment: TabAlignment.start,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  tabs: [
                    Tab(text: "All"),
                    Tab(text: "Sciences"),
                    Tab(text: "UI"),
                    Tab(text: "UX"),
                    Tab(text: "Flutter1"),
                    Tab(text: "Flutter2"),
                    Tab(text: "Flutter3"),
                    Tab(text: "Flutter4"),
                    Tab(text: "Flutter5"),
                    Tab(text: "Flutter6"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 197 / 277,
                ),
                itemCount: list.length,
                itemBuilder: (context, index) => _Item(
                  model: list[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final BookModel model;

  const _Item({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(BookDetailsView(model: model));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AppImage(
                  model.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              model.title.toUpperCase(),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
            ),
            Text(
              model.desc,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class BookModel {
  final String image, title, desc;

  BookModel({
    required this.image,
    required this.title,
    required this.desc,
  });
}
