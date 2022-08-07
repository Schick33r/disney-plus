import 'package:flutter/material.dart';

class MoviesView extends StatelessWidget {
  final String title;
  final List<String> movies;

  const MoviesView({Key? key, required this.title, required this.movies})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(title,
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: 4),
        SizedBox(
            height: 200,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              addAutomaticKeepAlives: true,
              children: movies.map((movies) => buildCover(movies)).toList(),
            )),
      ],
    );
  }
}

Widget buildCover(String movie) {
  return Container(
    margin: const EdgeInsets.all(7),
    width: 130,
    child: Image.network(
      movie,
      fit: BoxFit.fill,
    ),
  );
}
