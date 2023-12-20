import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ComingWidget extends StatefulWidget {
  const ComingWidget(
      {required this.videos,
      required this.title,
      required this.colorchange,
      required this.date1,
      required this.date2,
      required this.date3,
      required this.moviestory,
      super.key});
  final String videos;
  final String title;
  final Color colorchange;
  final String date1;
  final String date2;
  final String date3;
  final String moviestory;

  @override
  State<ComingWidget> createState() => _ComingWidgetState();
}

class _ComingWidgetState extends State<ComingWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videos);

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    widget.date1,
                    style: TextStyle(
                        color: Colors.grey[350], fontWeight: FontWeight.w500),
                  ),
                  Text(widget.date2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: _controller.value.isInitialized
                    ? Container(
                        width: 287,
                        child: Stack(
                          children: [
                            Container(
                                height: 200,
                                width: double.infinity,
                                child: VideoPlayer(_controller)),
                            VideoProgressIndicator(
                              _controller,
                              allowScrubbing: true,
                              padding: EdgeInsets.only(top: 177),
                            ),
                            Center(
                              heightFactor: 2.6,
                              child: FloatingActionButton(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                onPressed: () {
                                  setState(() {
                                    if (_controller.value.isPlaying) {
                                      _controller.pause();
                                    } else {
                                      _controller.play();
                                    }
                                  });
                                },
                                child: Icon(
                                  size: 45,
                                  _controller.value.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Center(
                        heightFactor: 2.6,
                        widthFactor: 7,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        )),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 44),
                height: 33,
                child: Image.asset(
                  widget.title,
                  height: 30,
                  width: 120,
                  color: widget.colorchange,
                  fit: BoxFit.cover,
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                  Text(
                    'Reminder Set',
                    style: TextStyle(
                        color: Colors.grey[350],
                        fontWeight: FontWeight.w500,
                        fontSize: 10),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                    Text(
                      'Info',
                      style: TextStyle(
                          color: Colors.grey[350],
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28, left: 40, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.date3,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    widget.moviestory,
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w400),
                  ),
                ),
                Text(
                  'Violent . Adventure . Visually Striking . Sword & Sandal',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
