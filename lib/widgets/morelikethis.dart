import 'package:flutter/material.dart';

class MoreLike extends StatelessWidget {
  MoreLike({super.key});

  final List morehobbits = [
    'images/twilight.jpg',
    'images/mummies.jpg',
    'images/priest.jpg',
    'images/greatwall.jpg',
    'images/airbender.jpg',
    'images/vanhelsing.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 0.8),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green,
              image: DecorationImage(
                  image: AssetImage(morehobbits[index]), fit: BoxFit.cover)),
        );
      },
    );
  }
}
