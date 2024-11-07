
import 'package:flutter/material.dart';
import 'package:untitled/sign_up_ui.dart';


class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Login Page",
          style: TextStyle(
            color: Colors.white
          ),),
        ),
        backgroundColor: Colors.green,
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child:
          Column(
            children: [
              Container(padding: EdgeInsets.symmetric(vertical: 60),
                width: double.infinity,
                height: 200,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text('CUSTOMER',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 35,
                          color: Colors.green
                        ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Text("LOGIN",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
        
                decoration: InputDecoration(
                  label: Text('Username',style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),),
                  prefixIcon: Icon(Icons.account_circle_rounded,
                    color: Colors.green,),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  label: Text('Password',style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                  ),
                  prefixIcon: Icon(Icons.lock,color: Colors.green,)
                ),
                cursorColor: Colors.green,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.check_box,color: Colors.green,),
                        SizedBox(
                          width: 4,
                        ),
                        Text('Remember me',style: TextStyle(
                          color: Colors.green
                        ),)
                      ],
                    ),
                    Row(
                      children: [
                      
                      
                      Text('Forgot Password?',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.green,
        
                        ),
                      )
                    ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Don\'t have account?',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      color: Colors.green
                    ),),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage() ));
                  },
                    child: Text('Create new account',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue
                      ),),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(onPressed: (){},child: Text('LOGIN',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0b7707),
                    foregroundColor: Colors.white,
                    shadowColor: Colors.green,
                    elevation: 2
                  )
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}