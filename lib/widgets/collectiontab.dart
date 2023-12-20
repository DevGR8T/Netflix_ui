import 'package:flutter/material.dart';

class CollectionTab extends StatelessWidget {
  CollectionTab({super.key});

  final List hobbits = [
    'images/hobbit2.jpg',
    'images/hobbit3.jpg',
    'images/hobbit4.jpg',
    'images/kombat.jpg',
    'images/mortal.jpg',
    'images/assassin.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 0.8),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage(hobbits[index]), fit: BoxFit.cover)),
        );
      },
    );
  }
}
