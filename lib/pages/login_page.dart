import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_page/components/my_textfield.dart';
import 'package:login_page/components/my_button.dart';
import 'package:login_page/components/square_tie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void login() {
    // Add your login logic here
    // print('Button tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),

              //logo
              Icon(
                Icons.login_rounded,
                size: 50,
              ),

              SizedBox(height: 20),

              //welcome back , you've been missed
              Text(
                'Welcome back, you\'ve been missed!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black45,
                ),
              ),
              SizedBox(height: 15),

              MyTextField(
                controller: usernamecontroller,
                hintText: "Username",
                obscureText: false,
              ),
              SizedBox(height: 15),
              MyTextField(
                controller: passwordcontroller,
                hintText: "Password",
                obscureText: true,
              ),

              //username

              //password

              //forgot password
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),

              //sign in button
              SizedBox(
                height: 10,
              ),
              MyButton(
                onTap: login,
                buttonName: "Sign In",
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'or continue with',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade300,
                    )),
                  ],
                ),
              ),

              //google and apple sign in
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               SquareTie(imagePath: 'lib/images/google.png',),
               SizedBox(width: 3,),
                SquareTie(imagePath: 'lib/images/apple.png'),
             ],
           ),
           



          

              //not a member? register now

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member now',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width:4),
                  Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}