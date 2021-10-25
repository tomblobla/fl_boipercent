import 'package:flutter/material.dart';
import 'Game.dart';

class BoiApp extends StatefulWidget {
  const BoiApp({Key? key}) : super(key: key);

  @override
  _BoiAppState createState() => _BoiAppState();
}

class _BoiAppState extends State<BoiApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: new EdgeInsets.fromLTRB(100, 100, 100, 0),
          child: TextFormField(
            onChanged: (text) {
              setState(() {
                Game.yourName = text;
              });
            },
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.pink.shade400),
            cursorColor: Colors.pink[200],
            decoration: new InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              filled: true,
              fillColor: Colors.pink[100],
              focusedBorder: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.pink.shade200),
              ),
              enabledBorder: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.pink.shade100),
              ),
              hintText: "Tên bạn",
              hintStyle: TextStyle(fontSize: 20.0, color: Colors.pink.shade200),
            ),
          ),
        ),
        Container(
            child: ElevatedButton(
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              backgroundColor: Colors.pink.shade400,
              title: Text(Game.Boi() + "%",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white)),
              content: Text(Game.GetDetail(Game.Boi()),
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.white)),
            ),
          ),
          child: Icon(Icons.favorite, color: Colors.white, size: 30.0),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(15),
            primary: Colors.pink[300], // <-- Button color
            onPrimary: Colors.pink[500], // <-- Splash color
          ),
        )),
        Container(
          margin: new EdgeInsets.fromLTRB(100, 0, 100, 100),
          child: TextFormField(
            onChanged: (text) {
              setState(() {
                Game.crushName = text;
              });
            },
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.pink.shade400),
            cursorColor: Colors.pink[200],
            decoration: new InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              filled: true,
              fillColor: Colors.pink[100],
              focusedBorder: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.pink.shade200),
              ),
              enabledBorder: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.pink.shade100),
              ),
              hintText: "Tên crush",
              hintStyle: TextStyle(fontSize: 20.0, color: Colors.pink.shade200),
            ),
          ),
        ),
      ],
    ));
  }
}
