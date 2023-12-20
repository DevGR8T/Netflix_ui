import 'package:flutter/material.dart';
import 'package:netflix_ui/widgets/comingwidget.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({super.key});

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  List playingvideos = [
    'videos/dam.mp4',
    'videos/avatar.mp4',
    'videos/exploding.mp4',
    'videos/rebelmoon.mp4',
    'videos/3body.mp4',
  ];

  List titles = [
    'images/damsel.png',
    'images/avatarlogo.png',
    'images/kittens.png',
    'images/rebelogo.png',
    'images/bodyproblem.png',
  ];

  List titlecolors = [
    Colors.white,
    Colors.yellow,
    Colors.brown,
    Colors.white,
    Colors.red,
  ];

  List months = [
    'Nov',
    'Nov',
    'Nov',
    'Dec',
    'Dec',
  ];

  List days = [
    '23',
    '28',
    '29',
    '02',
    '11',
  ];

  List comingmonth = [
    'Coming November 23',
    'Coming November 28',
    'Coming November 29',
    'Coming December 2',
    'Coming December 11',
  ];

  List storyline = [
    'A dutiful damsel agrees to marry a handsome prince, only to find the royal family has recruited her as a sacrifice to repay an ancient debt. Thrown into a cave with a fire-breathing dragon, she must rely on her wits and will to survive.',
    'The Avatar maintains the balance of the world and nature to bring peace, and Aang is now faced with the responsibility of ending the ambitions of the militaristic Fire Nation to conquer the world. With his new companions Katara and Sokka, Aang sets out to master the four classical elements while pursued by the exiled Fire Nation crown prince Zuko, who seeks to regain his honor by capturing him',
    'An eternal conflict reaches epic proportions when both, God and the Devil, are sent to Earth in the bodies of chunky house cats.',
    'When a peaceful settlement on the edge of a distant moon finds itself threatened by the armies of a tyrannical ruling force, a mysterious stranger living among its villagers becomes their best hope for survival.',
    'Ye Wenjie is an astrophysicist who saw her father brutally murdered during the Chinese Cultural Revolution. Later, she was conscripted by the military because of her scientific background and sent to a secret radar base in a remote region of China. Her fateful decision in the 1960s echoes across space and time to a group of scientists in the present day, forcing them to face humanity\'s greatest threat.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Coming Soon',
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
        body: ListView.builder(
          itemCount: playingvideos.length,
          itemBuilder: (context, index) {
            return ComingWidget(
              videos: playingvideos[index],
              title: titles[index],
              colorchange: titlecolors[index],
              date1: months[index],
              date2: days[index],
              date3: comingmonth[index],
              moviestory: storyline[index],
            );
          },
        ));
  }
}
