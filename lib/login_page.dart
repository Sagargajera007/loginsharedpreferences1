import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginsharedpreferences/Signup_page.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      FocusManager.instance.primaryFocus?.unfocus();
    },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 80),
                  Image.asset(
                    "assets/images/mobile-login-concept-illustration_114360-83.webp",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter Username", labelText: "Username"),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter Password", labelText: "Password"),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 1000,
                          child: ElevatedButton(onPressed: () {

                          }, child: Text("SIGN IN"),style: ButtonStyle(),),
                        ),
                        SizedBox(height: 10,),
                        const Divider(color: Colors.grey,endIndent: 3,indent: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account ?"),
                            TextButton(onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                    return signuppage();
                                  },));
                            }, child: Text("Sign up",style: TextStyle(fontSize: 17,color: Colors.red),))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),

    );
  }
}
