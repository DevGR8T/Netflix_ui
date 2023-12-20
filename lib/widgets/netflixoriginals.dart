import 'package:flutter/material.dart';

class NetflixOriginals extends StatelessWidget {
  NetflixOriginals({super.key});
  final originalsphotos = [
    'images/bargins.jpg',
    'images/aquaman.jpg',
    'images/treasure.jpg',
    'images/thunder.jpg',
    'images/ugly.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '  Netflix Originals',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
          SizedBox(
            height: 7,
          ),
          Container(
            height: 270,
            child: ListView.builder(
              itemCount: originalsphotos.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(right: 6),
                  width: 155,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                          image: AssetImage(originalsphotos[index]),
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
