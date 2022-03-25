import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [
    {"title": "Glues", "img": "assets/images/topimage.png"},
    {"title": "Focus2", "img": "assets/images/topimage.png"},
    {"title": "Glues", "img": "assets/images/topimage.png"},
    {"title": "Focus3", "img": "assets/images/topimage.png"},
    {"title": "Glues", "img": "assets/images/topimage.png"},
    {"title": "Glues", "img": "assets/images/topimage.png"}
  ];
  _initData() {
    DefaultAssetBundle.of(context).loadString('json/info.json').then((value) {
      List info1 = json.decode(value);
      print(info1);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Your program",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 22, 22, 22)),
                ),
                Expanded(
                  child: Container(),
                ),
                Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 56, 56, 217),
                    Color.fromARGB(255, 166, 170, 246).withOpacity(0.9),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(80),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(10, 10),
                    blurRadius: 10,
                    color: Color.fromARGB(255, 56, 56, 217).withOpacity(0.2),
                  )
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 25,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next workout",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Legs Toning",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "and Glutes Workout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "60 min",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 10,
                                  offset: Offset(4, 8),
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.play_circle_fill,
                              color: Colors.white,
                              size: 60,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 30),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(color: Colors.red),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 30),
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage("assets/images/bck.jpg"),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                          offset: Offset(8, 10),
                          color:
                              Color.fromARGB(255, 56, 56, 217).withOpacity(0.4),
                        ),
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(-1, -5),
                          color:
                              Color.fromARGB(255, 56, 56, 217).withOpacity(0.4),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: 200,
                      bottom: 30,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage("assets/images/topimage.png"),
                        // fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: const EdgeInsets.only(
                      left: 150,
                      top: 50,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You are doing great",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                                text: "Keep it up\n",
                                style: TextStyle(
                                  color: Color.fromRGBO(222, 222, 222, 1),
                                  fontSize: 12,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Stick to your plan",
                                  )
                                ]),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Area of focus",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: (info.length.toDouble() / 2).toInt(),
                  itemBuilder: (BuildContext context, i) {
                    int a = 2 * i;
                    int b = 2 * i + 1;
                    return Row(
                      children: [
                        Container(
                          height: 170,
                          width: (MediaQuery.of(context).size.width - 90) / 2,
                          margin: EdgeInsets.only(
                            left: 30,
                            bottom: 15,
                          ),
                          padding: EdgeInsets.only(
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(info[a]["img"]),
                              // fit: BoxFit.fill,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                offset: Offset(5, 5),
                                color: Color.fromARGB(255, 56, 56, 217)
                                    .withOpacity(0.1),
                              ),
                              BoxShadow(
                                blurRadius: 3,
                                offset: Offset(-5, -5),
                                color: Color.fromARGB(255, 56, 56, 217)
                                    .withOpacity(0.1),
                              )
                            ],
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            // child: Center(
                            child: Text(
                              "${info[a]["title"]}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            // ),
                          ),
                        ),
                        Container(
                          height: 170,
                          width: (MediaQuery.of(context).size.width - 90) / 2,
                          padding: EdgeInsets.only(
                            bottom: 10,
                          ),
                          margin: EdgeInsets.only(
                            left: 30,
                            bottom: 30,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(info[b + 1]["img"]),
                              // fit: BoxFit.fill,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                offset: Offset(5, 5),
                                color: Color.fromARGB(255, 56, 56, 217)
                                    .withOpacity(0.1),
                              ),
                              BoxShadow(
                                blurRadius: 3,
                                offset: Offset(-5, -5),
                                color: Color.fromARGB(255, 56, 56, 217)
                                    .withOpacity(0.1),
                              )
                            ],
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            // child: Center(
                            child: Text(
                              "${info[b + 1]["title"]}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            // ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
