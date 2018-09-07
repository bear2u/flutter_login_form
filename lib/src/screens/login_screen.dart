import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();    
  }
}

class LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: [
            emailField(),            
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),                        
            submitButton()
          ],
        ),
      )
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(          
      obscureText: true, //for password
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',                
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text("Submit"),
      onPressed: () {
        print('submit clicked');
      },
    );
  }
}
