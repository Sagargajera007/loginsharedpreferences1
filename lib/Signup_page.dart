import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginsharedpreferences/login_page.dart';

class signuppage extends StatefulWidget {
  const signuppage({Key? key}) : super(key: key);

  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController tname = TextEditingController();
  TextEditingController temail = TextEditingController();
  TextEditingController tpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: Text(
            "Create Account",
            style: TextStyle(color: Colors.black),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return Loginpage();
                  },
                ));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16,top: 20),
                    child: Text(
                      "Create Account",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.blue),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                           labelText: "Full Name"),
                      controller: tname,
                      onChanged: (value) {

                      },
                      validator: ( value){
                        if(value!.isEmpty){
                          return "Please Enter Name";
                        }
                        if(!RegExp( r'^[a-z A-Z,.\-]+$').hasMatch(value)){
                          return 'Please enter valid full name';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                           labelText: "Email"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                           labelText: "Password"),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: 1000,
                      child: ElevatedButton(onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          // use the information provided
                        }
                      }, child: Text("SIGN UP"),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
