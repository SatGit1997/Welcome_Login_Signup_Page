import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login_page.dart';
import 'package:untitled/sign_up_ui.dart';

class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: double.infinity,
                height: 200,

                child: Center(
                  child: Text('Welcome',style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                )),
            Container(
                width: double.infinity,
                height: 300,
                child: Image(image: AssetImage('assets/image/login laptop.jpeg'),fit: BoxFit.cover,)),
            ElevatedButton(
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            }, child: Text('Login'),
              style: ElevatedButton.styleFrom(
              side: BorderSide(width: 2,color: Colors.black.withOpacity(0.6)),
              minimumSize: Size(400, 50)
            ),),

            ElevatedButton(
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
              }, child: Text('Sign up'),
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: Colors.blue.shade800,width: 2),
                backgroundColor: Colors.blue.shade400,
                foregroundColor: Colors.white,
                minimumSize: Size(400, 50)
              ),
            ),
            SizedBox(height: 100,)
          ],
        ),

      ),
    );
  }
}