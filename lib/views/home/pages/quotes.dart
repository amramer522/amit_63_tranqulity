import 'package:amit_63_online/core/design/app_image.dart';
import 'package:amit_63_online/core/logic/helper_methods.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

class QuotesPage extends StatefulWidget {
  const QuotesPage({Key? key}) : super(key: key);

  @override
  State<QuotesPage> createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {

  final list = [
    QuoteModel(
      body: "The greatest glory in living lies not in never falling, but in rising every time we fall.",
      author: "Confucius",
    ),
    QuoteModel(
      body: "The purpose of our lives is to be happy.",
      author: "Dalai Lama",
    ),
    QuoteModel(
      body: "The only limit to our realization of tomorrow will be our doubts of today.",
      author: "Franklin D. Roosevelt",
    ),
    QuoteModel(
      body: "The greatest glory in living lies not in never falling, but in rising every time we fall.",
      author: "Nelson Mandela",
    ),
    QuoteModel(
      body: "Happiness is not something ready-made. It comes from your own actions.",
      author: "Dalai Lama",
    ),
    QuoteModel(
      body: "The only impossible journey is the one you never begin.",
      author: "Tony Robbins",
    ),
    QuoteModel(
      body: "Success is not final, failure is not fatal: It is the courage to continue that counts",
      author: "Winston Churchill",
    ),
    QuoteModel(
      body: "The future belongs to those who believe in the beauty of their dreams.",
      author: "Eleanor Roosevelt",
    ),
    QuoteModel(
      body: "Believe you can and you're halfway there.",
      author: "Theodore Roosevelt",
    ),
    QuoteModel(
      body: "The only way to do great work is to love what you do",
      author: "Steve Jobs",
    ),
    QuoteModel(
      body: "In the end, it's not the years in your life that count. It's the life in your years.",
      author: "Abraham Lincoln",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AppImage(
            "quotes.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xffD9D9D9).withOpacity(.5),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: PageView.builder(
              itemBuilder: (context, index) => Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 36),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppImage("ic_quotes.svg"),
                      SizedBox(height: 16),
                      Text(
                        '" ${list[index].body} "',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 34,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      SizedBox(height: 16),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          list[index].author,
                          style: TextStyle(
                            fontSize: 34,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      TextButton(
                        onPressed: () {
                          FlutterClipboard.copy(list[index].body).then(
                            (value) {
                              showMessage("Text Copied Success");
                            },
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Copy"),
                            SizedBox(width: 8),
                            AppImage("copy.svg"),
                          ],
                        ),
                      )
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 14),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white.withOpacity(.81),
                  ),
                ),
              ),
              itemCount: list.length,
            ),
          )
        ],
      ),
    );
  }
}

class QuoteModel
{
  final String body,author;

  QuoteModel({required this.body, required this.author});


}
