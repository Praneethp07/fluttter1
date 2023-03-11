import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

class Mysignuppage extends StatefulWidget {
  const Mysignuppage({super.key, required this.title});
  final String title;

  @override
  State<Mysignuppage> createState() => _MysignuppageState();
}

class _MysignuppageState extends State<Mysignuppage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
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
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color.fromARGB(255, 10, 78, 137)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'NEW USER?\n   SIGN UP',
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
                padding: const EdgeInsets.all(
                    8.0), // add 8 pixels of padding on all sides
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
                  child: Container(
                    
                    decoration: BoxDecoration(
                      color:Colors.lightBlue
                    ),
                    child: Text('🔒Create Account',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
