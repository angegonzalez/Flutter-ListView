import 'package:flutter/material.dart';

class Designer extends StatelessWidget {
  int experience = 0;
  String pathImage;
  String pathImageMail;
  String userName = "";
  Designer(this.experience, this.userName, this.pathImage, this.pathImageMail);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 20),
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final emailIcon = Container(
      alignment: Alignment.centerRight,
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(pathImageMail))),
    );

    final name = Text(
      userName,
      style: TextStyle(
          fontFamily: "SourceSansPro",
          fontSize: 17.0,
          fontWeight: FontWeight.w800),
    );

    final description = Text(
      'Experience: $experience years',
      style: TextStyle(
          color: Colors.black, fontSize: 12.0, fontFamily: "SourceSansPro"),
    );

    return Container(
      margin: EdgeInsets.only(top: 5.0),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.black12, width: 2.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              photo,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[name, description],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              emailIcon
            ],
          )
        ],
      ),
    );
  }
}
