import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Score extends StatefulWidget {
  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  final List<Map<String, dynamic>> _scoreBoard = [
    {
      "id": 1,
      "team": "Bangladesh",
      "img": AssetImage("images/bd.png"),
      "M": 2,
      "W": 2,
      "D": 0,
      "L": 1,
      "NRR": 0.44,
      "Pts": 1.25
    },
    {
      "id": 2,
      "team": "India",
      "img": AssetImage("images/india.png"),
      "M": 2,
      "W": 2,
      "D": 0,
      "L": 1,
      "NRR": 0.44,
      "Pts": 1.25
    },
    {
      "id": 3,
      "team": "Pakistan",
      "img": AssetImage("images/pk.png"),
      "M": 2,
      "W": 2,
      "D": 0,
      "L": 1,
      "NRR": 0.44,
      "Pts": 1.25
    },
    {
      "id": 4,
      "team": "Australia",
      "img": AssetImage("images/aus.jpg"),
      "M": 2,
      "W": 2,
      "D": 0,
      "L": 1,
      "NRR": 0.44,
      "Pts": 1.25
    },
    {
      "id": 5,
      "team": "New Zealend",
      "img": AssetImage("images/new.jpg"),
      "M": 2,
      "W": 2,
      "D": 0,
      "L": 1,
      "NRR": 0.44,
      "Pts": 1.25
    },
    {
      "id": 6,
      "team": "South Africa",
      "img": AssetImage("images/sa.png"),
      "M": 2,
      "W": 2,
      "D": 0,
      "L": 1,
      "NRR": 0.44,
      "Pts": 1.25
    },
    {
      "id": 7,
      "team": "West Indies",
      "img": AssetImage("images/wi.jfif"),
      "M": 2,
      "W": 2,
      "D": 0,
      "L": 1,
      "NRR": 0.44,
      "Pts": 1.25
    },
    {
      "id": 8,
      "team": "England",
      "img": AssetImage("images/eng.jpg"),
      "M": 2,
      "W": 2,
      "D": 0,
      "L": 1,
      "NRR": 0.44,
      "Pts": 1.25
    },
    {
      "id": 9,
      "team": "Afganisthan",
      "img": AssetImage("images/afg.jpg"),
      "M": 2,
      "W": 2,
      "D": 0,
      "L": 1,
      "NRR": 0.44,
      "Pts": 1.25
    },
  ];

  // This list holds the data for the list view

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              color: Colors.black54,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("#Team"),
                  Row(
                    children: [
                      Text("M"),
                      SizedBox(width: 15),
                      Text("W"),
                      SizedBox(width: 15),
                      Text("D"),
                      SizedBox(width: 15),
                      Text("L"),
                      SizedBox(width: 15),
                      Text("NRR"),
                      SizedBox(width: 15),
                      Text("Pts"),
                      SizedBox(width: 5),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _scoreBoard.length,
                itemBuilder: (context, index) {
                  if (index.isEven) {
                    return Container(
                      key: ValueKey(_scoreBoard[index]["id"]),
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 5),
                              Text(_scoreBoard[index]['id'].toString()),
                              SizedBox(width: 10),
                              Image(
                                image: _scoreBoard[index]['img'],
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(width: 5),
                              Text(_scoreBoard[index]['team']),
                            ],
                          ),
                          Row(
                            children: [
                              Text(_scoreBoard[index]['M'].toString()),
                              SizedBox(width: 15),
                              Text(_scoreBoard[index]['W'].toString()),
                              SizedBox(width: 15),
                              Text(_scoreBoard[index]['D'].toString()),
                              SizedBox(width: 15),
                              Text(_scoreBoard[index]['L'].toString()),
                              SizedBox(width: 15),
                              Text(_scoreBoard[index]['NRR'].toString()),
                              SizedBox(width: 15),
                              Text(_scoreBoard[index]['Pts'].toString()),
                              SizedBox(width: 5),
                            ],
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      key: ValueKey(_scoreBoard[index]["id"]),
                      height: 45,
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black54,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 5),
                              Text(_scoreBoard[index]['id'].toString()),
                              SizedBox(width: 10),
                              Image(
                                image: _scoreBoard[index]['img'],
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(width: 5),
                              Text(_scoreBoard[index]['team']),
                            ],
                          ),
                          Row(
                            children: [
                              Text(_scoreBoard[index]['M'].toString()),
                              SizedBox(width: 15),
                              Text(_scoreBoard[index]['W'].toString()),
                              SizedBox(width: 15),
                              Text(_scoreBoard[index]['D'].toString()),
                              SizedBox(width: 15),
                              Text(_scoreBoard[index]['L'].toString()),
                              SizedBox(width: 15),
                              Text(_scoreBoard[index]['NRR'].toString()),
                              SizedBox(width: 15),
                              Text(_scoreBoard[index]['Pts'].toString()),
                              SizedBox(width: 5),
                            ],
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
