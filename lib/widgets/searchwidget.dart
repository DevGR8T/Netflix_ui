import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget(
      {required this.movienames, required this.movielogos, super.key});
  final String movienames;
  final String movielogos;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 60,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage(movielogos), fit: BoxFit.cover)),
        ),
        Text(
          movienames,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Spacer(),
        Icon(
          Icons.play_circle_outline_outlined,
          color: Colors.white,
          size: 40,
        )
      ],
    );
  }
}
