import 'package:flutter/material.dart';
import 'designer.dart';

class DesignerList extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return ListView(
                children: <Widget>[
                  Designer(5, "Angel Mateo Gonzalez", "assets/images/profile_photo.jpg","assets/images/mail_open.png"),
                  Designer(25, "Ada Lovelace", "assets/images/profile_photo1.jpg", "assets/images/mail.png"),
                  Designer(35, "Alan Turing", "assets/images/profile_photo2.jpg","assets/images/mail.png"),

                ],

              );
  }
}