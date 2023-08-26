import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class miniyVideoPlayer extends StatefulWidget {
   miniyVideoPlayer({Key? key , required this.videoUrl}) : super(key: key);
  String videoUrl;

  @override
  State<miniyVideoPlayer> createState() => _miniyVideoPlayerState();
}

class _miniyVideoPlayerState extends State<miniyVideoPlayer> {

  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    // ignore: deprecated_member_use
    videoPlayerController = VideoPlayerController.network(widget.videoUrl)..initialize().then((value){
      videoPlayerController.play();
    });

  }


  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

    decoration: BoxDecoration(
    color: Colors.black,
    ),
      child: VideoPlayer(videoPlayerController),
    );


  }
}