import 'package:flutter/material.dart';

class Tile extends StatefulWidget {
  const Tile(this.backgroundColor, this.iconData, [this.text]);

  final Color backgroundColor;
  final IconData iconData;
  final String text;

  @override
  State<StatefulWidget> createState() {
    return _TileState();
  }
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Draggable(
        feedback: Text('Hola'),
        child: Card(
          color: widget.backgroundColor,
          child: InkWell(
            onTap: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Pressed tile..."),
                  duration: Duration(seconds: 2)));
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  widget.iconData,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ));
  }
}
