import 'package:flutter/material.dart';
import 'package:tictactoe/ui/game_page.dart';
import 'package:tictactoe/ui/rules_page.dart';

class HomePage extends StatefulWidget {
  @override
  //Const. for title
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Welcome to TicTacToe',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Center(
              child: ButtonTheme(
                minWidth: 200,
                height: 80,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.amber[300], width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  color: Colors.amber[300],
                  onPressed: () {
                    //Navigator goes to the game page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GamePage(widget.title)));
                  },
                  child: Text(
                    "New game!",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            //rules btn

            Center(
              child: ButtonTheme(
                minWidth: 200,
                height: 80,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.amber[200], width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  color: Colors.amber[200],
                  onPressed: () {
                    //Navigator goes to the the rules page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RulesPage(widget.title)));
                  },
                  child: Text(
                    "Rules",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )

            //end of rules btn
          ],
        ),
      ),
    );
  }
}
