
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget{
  TextEditingController usernameController = TextEditingController();
  TextEditingController  emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conformPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(70),
                  child: Column(
                    children: [
                      Text("Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                       )
                      ),
                      Text('Create your account',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                  ),
                ),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    label: Text('Username'),
                    hintText: "Plese enter a username",
                    prefixIcon: Icon(Icons.person_2_rounded),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Color(0xffd8935f),
                        width: 1,
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                          color: Color(0xff32b81b),
                          width: 2
                      )
                    )
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    label: Text('Email'),
                    hintText: 'Please enter an email',
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xffd8935f),
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xff32b81b),
                      )
                    )
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    label: Text("Password"),
                      hintText: "Please enter 8 character password",
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xffd8935f),
                      )
                    ),
                      focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xff32b81b),
                      )
                    )
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: conformPasswordController,
                  decoration: InputDecoration(
                    label: Text("Conform Password"),
                    hintText: "Again fill same password",
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xffd8935f),
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xff32b81b),
                      )
                    )
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    print("Value ${usernameController.text}");
                    print("Value ${emailController.text}");
                    print("Value ${passwordController.text}");
                    print("Value ${conformPasswordController.text}");

                  },
                      child: Text('Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white

                      ),
                      ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green,
                      backgroundColor: Colors.redAccent,
                      shadowColor: Colors.redAccent,
                      elevation: 5,
                    ),
                  ),
                ),

              ],

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 350,
                  child: OutlinedButton(onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/image/bg_googlelogo.png'),width: 45,),
                        Text("Login With Google",),
                      ],
                    ),

                    ),

                  ),

              ],
            ),
          )
        ],
      ),

    );
  }
}