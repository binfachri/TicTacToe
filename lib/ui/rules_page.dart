import 'package:flutter/material.dart';

class RulesPage extends StatefulWidget {
  RulesPage(String title);

  @override
  _RulesPageState createState() => _RulesPageState();
}

class _RulesPageState extends State<RulesPage> {
  final String rulesText =
      " The game is played on a grid that's 3 squares by 3 squares.\n\n"
      " You are X, your friend is O. Players take turns putting their marks in empty squares.\n\n"
      " The first player to get 3 of their marks in a row (up, down, across, or diagonally) is the winner.\n\n"
      " When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie.\n\n";

  String title = 'Game Rules';
  static const backgroundColor = const Color(0xFFE6E2E2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          rulesText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
