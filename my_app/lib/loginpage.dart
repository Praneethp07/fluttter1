import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

class Myloginpage extends StatefulWidget {
  const Myloginpage({super.key, required this.title});
  final String title;

  @override
  State<Myloginpage> createState() => _MyloginpageState();
}

class _MyloginpageState extends State<Myloginpage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 116, 176, 226),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          height: 500,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color.fromARGB(255, 10, 78, 137)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'LOGIN',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                style: TextStyle(fontSize: 30),
                controller: namecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
              //gap
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(fontSize: 30),
                controller: passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //forgot password?
              TextButton(
                onPressed: () {
                  print('Forgot Password');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const myfirstpage()));
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 1, 11, 20)),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0), // add 8 pixels of padding on all sides
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {
                    _username = namecontroller.text;
                    print(_username);
                    _password = passwordcontroller.text;
                    print(_password);
                    if (_username == 'admin' && _password == 'password') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const myfirstpage(),
                        ),
                      );
                    } else {
                      print('Invalid Credentials');
                    }
                  },
                  child: Text('Log In',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
