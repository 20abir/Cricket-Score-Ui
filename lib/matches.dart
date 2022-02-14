import 'package:flutter/material.dart';

class Matches extends StatelessWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Thursday - 03-02-2022",
              style: TextStyle(fontSize: 20, color: Colors.white70),
            ),
            MatchesCard(
              time: '6.00 - T20 - 1st Match',
              image: ("images/bd.png").toString(),
              image2: ("images/india.png").toString(),
              txt1: 'Bangladesh',
              txt2: "India",
            ),
            SizedBox(height: 10),
            Text(
              "Saturday - 05-02-2022",
              style: TextStyle(fontSize: 20, color: Colors.white70),
            ),
            MatchesCard(
              time: '6.00 - T20 - 1st Match',
              image: ("images/eng.jpg").toString(),
              image2: ("images/aus.jpg").toString(),
              txt1: 'England',
              txt2: "Australia",
            ),
            SizedBox(height: 10),
            Text(
              "Monday - 07-02-2022",
              style: TextStyle(fontSize: 20, color: Colors.white70),
            ),
            MatchesCard(
              time: '6.00 - T20 - 1st Match',
              image: ("images/new.jpg").toString(),
              image2: ("images/india.png").toString(),
              txt1: 'New Zealand',
              txt2: "India",
            ),
            SizedBox(height: 10),
            Text(
              "Wednesday - 09-02-2022",
              style: TextStyle(fontSize: 20, color: Colors.white70),
            ),
            MatchesCard(
              time: '6.00 - T20 - 1st Match',
              image: ("images/bd.png").toString(),
              image2: ("images/pk.png").toString(),
              txt1: 'Bangladesh',
              txt2: "Pakisthan",
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class MatchesCard extends StatelessWidget {
  final String time;

  final String image;

  final String image2;
  final String txt1;
  final String txt2;

  const MatchesCard(
      {Key? key,
      required this.time,
      required this.image,
      required this.image2,
      required this.txt1,
      required this.txt2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(time),
                  Icon(Icons.star),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    image,
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(txt1),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    image2,
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(txt2),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
