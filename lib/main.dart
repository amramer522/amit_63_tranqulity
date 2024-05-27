import 'package:amit_63_online/core/logic/app_theme.dart';
import 'package:amit_63_online/core/logic/cache_helper.dart';
import 'package:amit_63_online/core/logic/helper_methods.dart';
import 'package:flutter/material.dart';

import 'flick_video.dart';
import 'movies.dart';
import 'play_music.dart';
import 'play_video.dart';
import 'youtube.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await CacheHelper.init();
   print(CacheHelper.name);
   print(CacheHelper.age);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tranquility",
      navigatorKey: navigatorKey,
      theme: AppTheme.light,
      home: MoviesView(),
    ),
  );
}
