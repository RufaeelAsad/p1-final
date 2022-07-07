import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
      SizedBox(
        height: 30,
        width: double.infinity,
      ),
      Image(
        image: AssetImage('assets/images/loginPage2-removebg-preview.png'),
        height: 200,
        width: 200,
      ),
      SizedBox(
        height: 30,
        width: double.infinity,
      ),
      Form(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              ),
            ),

            Padding(
              padding:  EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Phone',
                    hintText: 'Enter Phone Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: TextFormField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    labelText: 'Pasword',
                    hintText: 'Enter Pasword',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              ),
            ),



            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'SignUp'
                ))

          ],
        ),
      ),
    ]))));
  }
}
