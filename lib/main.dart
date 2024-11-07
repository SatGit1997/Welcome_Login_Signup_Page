import 'package:flutter/material.dart';
import 'package:untitled/welcome_page.dart';

void main(){
  runApp(SignUpUi());
}


class SignUpUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginSignupUI',
      home: WelcomePage(),
    );
  }
}