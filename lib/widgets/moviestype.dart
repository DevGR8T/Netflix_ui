import 'package:flutter/material.dart';

class MoviesType extends StatelessWidget {
  MoviesType({required this.allphotos, required this.genres, super.key});
  final String genres;
  List<String> allphotos = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            genres,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
          SizedBox(
            height: 7,
          ),
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: allphotos.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(right: 6),
                  width: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                          image: AssetImage(allphotos[index]),
                          fit: BoxFit.fill)),
                  child: SizedBox(
                    width: 15,
                    height: 15,
                    child: index == 0 || index == 1 || index == 3
                        ? Image.asset(
                            'images/netflixN.png',
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
