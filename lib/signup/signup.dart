import 'package:elderwell/profile/1_get_started.dart';
import 'package:elderwell/report/report.dart';
import 'package:elderwell/signup/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 40,
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
                      labelText: 'First Name',
                      // labelStyle: TextStyle(
                      //   color: Colors.,
                      // ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Last Name',
                      // labelStyle: TextStyle(
                      //   color: Colors.,
                      // ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Email',
                      // labelStyle: TextStyle(
                      //   color: Colors.,
                      // ),
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
                      // labelStyle: TextStyle(
                      //   color: Colors.,
                      // ),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(15.0),
                //   child: Center(
                //     child: InkWell(
                //       onTap: (){},
                //       child: Text(
                //         'Forgot Password?',
                //         style: TextStyle(
                //           fontSize: 15,
                //           fontWeight: FontWeight.w400,
                //           color: Colors.blue,
                //           decoration: TextDecoration.underline,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                  onPressed: (){
                    Get.to(const GetStarted());
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 3.0,bottom: 3,right: 25,left: 25),
                    child: Text('Sign Up'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Get.to(const Login());
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
