import 'package:flutter/material.dart';
import 'package:netflix_ui/widgets/searchwidget.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final List movietitles = [
    'Worldwar Z',
    'Aquaman',
    'The Yin-Yang Master',
    'Uncharted',
    'Extraction',
    'Space Sweepers',
    'Mortal Kombat',
    '6 underground',
    'Mortal Engines',
    'Animals on the loose',
  ];

  final List movielogo = [
    'images/warZ.png',
    'images/aqualogo.jpg',
    'images/yinlogo.jpg',
    'images/unchartedlogo.jpg',
    'images/extractionlogo.jpg',
    'images/spacelogo.png',
    'images/mortallogo.jpeg',
    'images/6underlogo.jpg',
    'images/enginelogo.png',
    'images/animallogo.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
            height: 35,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.grey[700],
            ),
            child: TextField(
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontWeight: FontWeight.bold,
                      fontSize: 17)),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Searches',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: movietitles.length,
                itemBuilder: (context, index) {
                  return SearchWidget(
                    movienames: movietitles[index],
                    movielogos: movielogo[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
