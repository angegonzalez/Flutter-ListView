import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = Text(
      "Designers",
      style: TextStyle(
          fontFamily: "SourceSansPro",
          fontWeight: FontWeight.w900,
          fontSize: 32.0,
          color: Colors.white),
    );

    final menuImage = Container(
      margin: EdgeInsets.only(left: 50.0, top: 0.0, right: 40.0),
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/images/menu.png"))),
    );

    final header = Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF6dd5ed),
                Color(0xFF2193b0),
              ],
              begin: FractionalOffset(0.1, 0.1),
              end: FractionalOffset(.9, 0.5),
              stops: [0.0, 0.8],
              tileMode: TileMode.clamp),
          borderRadius: BorderRadius.circular(10),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black45,
                blurRadius: 20.0,
                offset: Offset(0.0, 0.0))
          ]),
      height: 120.0,
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(
        children: <Widget>[menuImage, title],
      ),
    );
    return header;
  }
}
