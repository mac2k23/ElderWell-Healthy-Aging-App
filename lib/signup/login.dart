import 'package:elderwell/controller/screen1.dart';
import 'package:elderwell/controller/test.dart';
import 'package:elderwell/report/report.dart';
import 'package:elderwell/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: RotatedBox(
                quarterTurns: 3,
                child: Image.asset(
                  'assets/images/bg.png',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your username',
                        labelStyle: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black45,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                    onPressed: (){
                      Get.to(const Report());
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 3.0,bottom: 3,right: 25,left: 25),
                      child: Text(
                          'Login',
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: InkWell(
                        onTap: (){
                          Get.to(Test());
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.orangeAccent,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Get.to(const SignUp());
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
