import 'package:flutter/material.dart';

class Squad extends StatefulWidget {
  const Squad({Key? key}) : super(key: key);

  @override
  _SquadState createState() => _SquadState();
}

class _SquadState extends State<Squad> {
  final List<Map<String, dynamic>> _allPlayer = [
    {"id": 1, "name": "Player Name", "position": "Position"},
    {"id": 2, "name": "Soumya Sharker", "position": "Batsman"},
    {"id": 3, "name": "Liton dash", "position": "Batsman"},
    {"id": 4, "name": "Shakib AL Hasan", "position": "Allrounder"},
    {"id": 5, "name": "MusFiqur Rahim", "position": "Batsman/wk"},
    {"id": 6, "name": "Nurul Hasan", "position": "Batsman"},
    {"id": 7, "name": "Mehdi Hasan", "position": "Allrounder"},
    {"id": 8, "name": "Taskin Ahmed", "position": "Bowler"},
    {"id": 9, "name": "Shadman Hossain", "position": "Allrounder"},
    {"id": 10, "name": "Ebadot Hossain", "position": "Bowler"},
    {"id": 11, "name": "Mustafizur Rahman", "position": "Bowler"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _allPlayer.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_allPlayer[index]['name']),
                  Text(_allPlayer[index]['position']),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
