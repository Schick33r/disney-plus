import 'package:disney_plus/widgets/bottom_nav_bar.dart';
import 'package:disney_plus/widgets/carousel_view.dart';
import 'package:disney_plus/widgets/disney_app_bar.dart';
import 'package:disney_plus/widgets/movies.view.dart';
import 'package:disney_plus/widgets/top_Studio_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static List<String>? movies;
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> covers = [
    'https://media.comicbook.com/uploads1/2015/06/antmanposter-139745.jpg',
    'https://i.pinimg.com/236x/92/5d/e8/925de870f00d0f1f83502772bbc6c84c.jpg',
    'https://hips.hearstapps.com/digitalspyuk.cdnds.net/13/18/comics-infinity-1-cover-artwork.jpg',
    'https://i.pinimg.com/originals/69/3b/5a/693b5ae03a25cb9d3a6ce3f567d1f817.jpg',
    'https://i.pinimg.com/736x/fd/12/df/fd12dfea52d3f17c9ef93a148ccf2c4c.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF04061e),
      appBar: disneyAppBar(),
      body: ListView(
        addAutomaticKeepAlives: true,
        shrinkWrap: true,
        children: [
          const SizedBox(height: 15),
          const CarouselView(),
          const SizedBox(height: 15),
          Container(alignment: Alignment.center, child: const TopStudioView()),
          const SizedBox(height: 15),
          MoviesView(
            title: 'Recommend for you',
            movies: covers,
          ),
          const SizedBox(height: 15),
          MoviesView(
            title: 'Hit Movies',
            movies: covers.reversed.toList(),
          )
        ],
      ),
      bottomNavigationBar: const ButtomNavigationBar(),
    );
  }
}
