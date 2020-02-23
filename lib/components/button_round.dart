import 'package:flutter/material.dart';

class BtnRound extends StatefulWidget {
  Widget child;
  Color bgcolor;
  EdgeInsets padding;

  BtnRound({ Key key, this.child, this.bgcolor, this.padding }) : super(key: key);

  @override 
  _BtnRound createState() => _BtnRound();
}

class _BtnRound extends State<BtnRound> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding != null ? widget.padding : EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.bgcolor != null ? widget.bgcolor : Colors.blueAccent,
      ),
      child: widget.child != null ? widget.child : Text('-'),
    );

  }
}