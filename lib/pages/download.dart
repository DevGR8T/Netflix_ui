import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'My Downloads',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.collections_bookmark_rounded,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 22,
            width: 22,
            child: Image.asset(
              'images/pic2.jpg',
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 40,
            width: double.infinity,
            color: Colors.grey[700],
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Colors.white54,
                ),
                Text(
                  '  Smart Downloads',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  '  ON',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(height: 50),
          CircleAvatar(
            backgroundColor: Colors.grey[800],
            radius: 65,
            child: Icon(
              Icons.download,
              size: 60,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(
            height: 23,
          ),
          Text(
            'Never  be without Netflix',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Text(
              textAlign: TextAlign.center,
              'Download shows and movies so you\'ll never be without something to watch even when you are offline',
              style: TextStyle(
                  color: Colors.white,
                  height: 1.2,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            alignment: Alignment.center,
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(3)),
            child: Text(
              'See What You Can Download',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
