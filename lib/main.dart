import 'package:flutter/material.dart';
import 'package:tictactoe/ui/home_page.dart';

void main() => runApp(TicTacToe());

String title = "Tic Tac Toe";

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: (title),
      theme: ThemeData(primaryColor: Colors.amber),
      home: HomePage(title: title),
    );
  }
}
