import 'package:flutter/material.dart';
import 'package:netflix_ui/widgets/collectiontab.dart';
import 'package:netflix_ui/widgets/morelikethis.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetailPage extends StatefulWidget {
  const VideoDetailPage(
      {required this.videourl,
      required this.filmname,
      required this.intro,
      super.key});
  final String videourl;
  final String filmname;
  final String intro;
  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    _controller = YoutubePlayerController(
        initialVideoId: widget.videourl,
        flags: YoutubePlayerFlags(
          autoPlay: true,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller!,
          showVideoProgressIndicator: false,
          progressColors: ProgressBarColors(
              bufferedColor: Colors.red, handleColor: Colors.red),
        ),
        builder: (context, player) {
          return DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leadingWidth: 40,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, size: 18),
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
                      height: 23,
                      width: 23,
                      child: Image.asset(
                        'images/pic2.jpg',
                      ),
                    )
                  ],
                ),
                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: [
                        player,
                        Positioned(
                          bottom: 13,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 23,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    'Preview',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ]),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.filmname,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'New',
                                    style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7),
                                    child: Text('2013',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    height: 17,
                                    width: 27,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Text('16+',
                                        style:
                                            TextStyle(color: Colors.white54)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7),
                                    child: Text(
                                      '2h 49m',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 20,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 2),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Text('HD',
                                        style: TextStyle(color: Colors.white)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.symmetric(
                                  horizontal: 2),
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.play_arrow),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Resume',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.symmetric(
                                  horizontal: 2, vertical: 10),
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.download,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Download',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Text(widget.intro,
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Starring: Lan McKellen, Martin Freeman, Richard Armitage...more \Director: Peter Jackson',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 10, left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.check,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'My List',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 11),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.thumb_up_alt_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Rate',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 11),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.share,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Share',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 11),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TabBar(
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        isScrollable: true,
                        indicatorColor: Colors.red,
                        tabs: [
                          Tab(
                            text: 'Collection',
                          ),
                          Tab(
                            text: 'More like this',
                          )
                        ],
                      ),
                      Container(
                          height: 300,
                          child: TabBarView(
                              children: [CollectionTab(), MoreLike()]))
                    ],
                  ),
                ),
              ));
        });
  }
}
