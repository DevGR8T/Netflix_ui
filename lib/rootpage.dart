import 'package:flutter/material.dart';
import 'package:netflix_ui/pages/comingsoon.dart';
import 'package:netflix_ui/pages/download.dart';
import 'package:netflix_ui/pages/homepage.dart';
import 'package:netflix_ui/pages/searchpage.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selecteditem = 0;
  List<Widget> pages = [HomePage(), ComingSoon(), SearchPage(), DownloadPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selecteditem],
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
          onTap: (int tappeditem) {
            setState(() {
              selecteditem = tappeditem;
            });
          },
          currentIndex: selecteditem,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.play_circle_outline,
              ),
              label: 'Coming Soon',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.file_download_outlined,
              ),
              label: 'Downloads',
            ),
          ]),
    );
  }
}
