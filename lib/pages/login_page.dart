import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superbase_learn/pages/home_page.dart';
import 'package:superbase_learn/services/auth_func.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "enter your email"
              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              controller:passwordController,
              decoration: InputDecoration(
                  hintText: "enter your password"
              ),
            ),
            SizedBox(height: 30,),
            CupertinoButton(child: Text('Login'),
                color: Colors.green,
                onPressed: (){
                 AuthFunc().signInWithEmail(email: emailController.text, password: passwordController.text);
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
                })
          ],
        ),
      ),
    );
  }
}
