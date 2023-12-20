import 'package:flutter/material.dart';
import 'package:netflix_ui/pages/videodetailpage.dart';
import 'package:netflix_ui/widgets/moviestype.dart';
import 'package:netflix_ui/widgets/netflixoriginals.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: size.height / 1.5,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/bibo.jpg'), fit: BoxFit.fill)),
            child: Column(
              children: [
                SafeArea(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 35,
                          child: Image.asset(
                            'images/netflixN.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.collections_bookmark_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          child: Image.asset(
                            'images/pic2.jpg',
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 263),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'TV Shows',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      Text(
                        'Movies',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      Row(
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'images/hobbitlogo.png',
                  height: 120,
                ),
                Text(
                  'Exciting - Sci-Fi Drama - Sci-Fi Adventure',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, bottom: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    Text(
                      'My List',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return VideoDetailPage(
                          videourl: 'SDnYMbYB-nU',
                          filmname: 'The Hobbit: An Unexpected Journey',
                          intro:
                              'In this prequel to the "Lord of the Rings"triology, Bilbo Baggins joins a hardy group of dwarves on a dangerous quest to regain their lost kingdom.',
                        );
                      },
                    ));
                  },
                  child: Container(
                    height: 30,
                    width: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3)),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 3),
                        child: Icon(Icons.play_arrow),
                      ),
                      Text(
                        'Play',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      )
                    ]),
                  ),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                    Text(
                      'Info',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return VideoDetailPage(
                    videourl: 'o5F8MOz_IDw',
                    filmname: 'Avatar: The Way of Water',
                    intro:
                        'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Na\'vi race to protect their home.',
                  );
                },
              ));
            },
            child: MoviesType(genres: '  My List', allphotos: [
              'images/underground.jpg',
              'images/avatar.jpg',
              'images/uncharted.jpg',
              'images/treasure.jpg',
              'images/maid.jpg'
            ]),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return VideoDetailPage(
                    videourl: 'JMiFsFQcFLE',
                    filmname: 'Rush Hour',
                    intro:
                        'A loyal and dedicated Hong Kong Inspector teams up with a reckless and loudmouthed L.A.P.D. detective to rescue the Chinese Consul\'s kidnapped daughter, while trying to arrest a dangerous crime lord along the way.',
                  );
                },
              ));
            },
            child: MoviesType(
              genres: '  Popular on Netflix',
              allphotos: [
                'images/extraction.jpg',
                'images/rush.jpg',
                'images/thunder.jpg',
                'images/ugly.jpg',
                'images/ice.jpg'
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return VideoDetailPage(
                    videourl: '4EC7P5WdUko',
                    filmname: 'World War Z',
                    intro:
                        'Former United Nations employee Gerry Lane traverses the world in a race against time to stop a zombie pandemic that is toppling armies and governments and threatens to destroy humanity itself.',
                  );
                },
              ));
            },
            child: MoviesType(genres: '  Trending Now', allphotos: [
              'images/worldwarz.jpg',
              'images/heaven.jpg',
              'images/kombat.jpg',
              'images/mortal.jpg',
              'images/avatar.jpg',
            ]),
          ),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return VideoDetailPage(
                      videourl: 'SDnYMbYB-nU',
                      filmname: 'The Hobbit: An Unexpected Journey',
                      intro:
                          'In this prequel to the "Lord of the Rings"triology, Bilbo Baggins joins a hardy group of dwarves on a dangerous quest to regain their lost kingdom.',
                    );
                  },
                ));
              },
              child: NetflixOriginals()),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return VideoDetailPage(
                    videourl: 'SJ5ICtGn6u8',
                    filmname: 'Gantz Opening',
                    intro:
                        'A pair of high school students, Kei Kurono and Masaru Kato, are hit by a subway train in an attempt to save the life of a drunk homeless man who had fallen onto the tracks. Following their deaths, Kurono and Kato find themselves transported to the interior of an unfurnished Tokyo apartment, where they meet Joichiro Nishi, a Gantz veteran, and other clueless participants',
                  );
                },
              ));
            },
            child: MoviesType(genres: '  Anime', allphotos: [
              'images/anime1.jpg',
              'images/anime3.jpg',
              'images/Anime4.jpg',
              'images/Anime5.jpg',
              'images/anime6.jpg',
            ]),
          ),
        ],
      ),
    );
  }
}
