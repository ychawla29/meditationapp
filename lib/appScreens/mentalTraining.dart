import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MentalTraining extends StatefulWidget {
  MentalTraining({Key key}) : super(key: key);

  @override
  _MentalTrainingState createState() => _MentalTrainingState();
}

class _MentalTrainingState extends State<MentalTraining> {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;
  Duration musicDuration;
  Duration musicPosition;

  bool isPlaying;

  @override
  void initState() {
    isPlaying = false;
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
    musicDuration = Duration();
    musicPosition = Duration();
    advancedPlayer.onDurationChanged.listen((duration) {
      setState(() {
        musicDuration = duration;
      });
    });
    advancedPlayer.onAudioPositionChanged.listen((position) {
      setState(() {
        musicPosition = position;
      });
    });
    super.initState();
  }

  void seek(int seconds) {
    Duration newDuration = Duration(seconds: seconds);
    advancedPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/mentalTraining.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).padding.top + 5,
              left: MediaQuery.of(context).size.width * 0.3,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mental Training",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'san fransisco',
                        fontWeight: FontWeight.w400,
                        fontSize: 22.0,
                      ),
                    ),
                    IconButton(
                        icon: Image.asset("assets/icons/cancel.png"),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).padding.bottom,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          ),
                          onPressed: null,
                          iconSize: 30.0,
                        ),
                        isPlaying
                            ? IconButton(
                                icon: Icon(
                                  Icons.pause,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isPlaying = false;
                                    advancedPlayer.pause();
                                  });
                                },
                                iconSize: 40.0,
                              )
                            : IconButton(
                                icon: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isPlaying = true;
                                    audioCache.play("music.mp3");
                                  });
                                },
                                iconSize: 40.0,
                              ),
                        IconButton(
                          icon: Image.asset("assets/icons/sliders.png"),
                          onPressed: null,
                        ),
                      ],
                    ),
                    Slider(
                      value: musicPosition.inSeconds.toDouble(),
                      min: 0,
                      max: musicDuration.inSeconds.toDouble(),
                      onChanged: (newValue) {
                        setState(() {
                          seek(newValue.toInt());
                        });
                      },
                      activeColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    audioCache.clearCache();
    advancedPlayer.dispose();
    super.dispose();
  }
}
