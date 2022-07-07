
import 'package:p1final/screens/authenticationScreens/signupPage.dart';
import 'package:path/path.dart' as Path;

import 'package:flutter/material.dart';
import 'package:p1final/screens/dashboardScreens/rootPage.dart';

class LoginPage extends StatefulWidget {
  @override

  _LoginPageStae createState() => _LoginPageStae();

}

class _LoginPageStae extends State<LoginPage> {
  GlobalKey<FormState> _globalKey = GlobalKey();

  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  void _signIn() {
    if (_globalKey.currentState!.validate()) {
      String? username = _controller1.text;
      String? password = _controller2.text;

      _controller1.clear();
      _controller2.clear();

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) {
                return RootPage();
              }));
    }
  }

  String? _validateUserName(String? value) {
    return value!.isEmpty ? 'Username is Invalid' : null;
  }

  String? _validatePassword(String? value) {
    return value!.isEmpty ? 'Password is Invalid' : null;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xfff5f7fa),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 40.0,
              ),
              Image(
                image:
                    AssetImage('assets/images/loginPage2-removebg-preview.png'),
                height: 250,
                width: 250,
              ),
              SizedBox(
                width: double.infinity,
                height: 40.0,
              ),
              Form(
                key: _globalKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) => _validateUserName(value),
                        controller: _controller1,
                        decoration: InputDecoration(
                            labelText: 'USERNAME',
                            hintText: 'Enter Username',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) => _validatePassword(value),
                        controller: _controller2,
                        autocorrect: false,
                        enableSuggestions: false,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: _signIn,
                      child: Text('Login'),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffecf1f4)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)))),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) {
                              return SignUpPage();
                            }));
                      },
                      child: Text('Signup '),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffecf1f4)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: Text('Forgot Password'))
            ],
          ),
        ),
      ),
    );
  }
}
