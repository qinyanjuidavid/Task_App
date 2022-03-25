import 'package:flutter/material.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  video_info=[
  {
    "title": "Squat and  Walk",
    "time": "45 seconds",
    "thumbnail": "embed/img1.jpg",
    "videoUrl": "https://www.youtube.com/watch?v=svQOxQde0bg"
  },
  {
    "title": "Squat and  Walk",
    "time": "45 seconds",
    "thumbnail": "embed/img1.jpg",
    "videoUrl": "https://www.youtube.com/watch?v=svQOxQde0bg"
  },
  {
    "title": "Squat and  Walk",
    "time": "45 seconds",
    "thumbnail": "embed/img1.jpg",
    "videoUrl": "https://www.youtube.com/watch?v=svQOxQde0bg"
  },
  {
    "title": "Squat and  Walk",
    "time": "45 seconds",
    "thumbnail": "embed/img1.jpg",
    "videoUrl": "https://www.youtube.com/watch?v=svQOxQde0bg"
  }
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 25, 48, 222).withOpacity(0.9),
              Color.fromARGB(255, 94, 115, 202).withOpacity(0.8),
            ],
            begin: FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 0,
                          top: 15,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 0,
                          top: 15,
                        ),
                        child: Icon(
                          Icons.info_outline_rounded,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Legs Toning",
                    style: TextStyle(
                      fontSize: 25,
                      // fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "and Glutes Workout",
                    style: TextStyle(
                      fontSize: 25,
                      // fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 4, 31, 233).withOpacity(0.9),
                              Color.fromARGB(255, 152, 171, 245)
                                  .withOpacity(0.8),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20,
                              color: Color.fromARGB(255, 229, 221, 221),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "68 min",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 229, 221, 221),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        // width: 250,
                        height: 30,
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 4, 31, 233).withOpacity(0.9),
                              Color.fromARGB(255, 152, 171, 245)
                                  .withOpacity(0.8),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.handyman_outlined,
                              size: 20,
                              color: Color.fromARGB(255, 229, 221, 221),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Resistent band, kettebell",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 229, 221, 221),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Circuit 1: Legs Toning",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Icon(
                              Icons.loop,
                              color: Colors.blueGrey,
                              size: 30,
                            ),
                            Text(
                              "3 sets",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blueGrey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
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
}
