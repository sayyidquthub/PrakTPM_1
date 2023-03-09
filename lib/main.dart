import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          children: <Widget>[
            Column(children: <Widget>[
              SizedBox(
                height: 200,
              ),
              FlutterLogo(),
            ]),
            SizedBox(
              height: 70.0,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: <Widget>[
                MaterialButton(
                  child: const Text("Log In"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  minWidth: 450.0,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Forgot Password?'),
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 200, vertical: 20)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
