import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = 'udacodingid';
  String password = 'udacodingJaya2021';

  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Center(
            child: Column(children: <Widget>[
              Container(
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.all(50),
              ),
              SizedBox(height: 50),
              Container(
                width: 300,
                margin: EdgeInsets.only(bottom: 30),
                child: TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: 'Enter your username',
                  ),
                ),
              ),
              Container(
                width: 300,
                margin: EdgeInsets.only(bottom: 40),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(hintText: 'Enter your password'),
                ),
              ),
              MaterialButton(
                minWidth: 100,
                height: 40,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  if (username == usernameController.text &&
                      password == passwordController.text) {
                    print('pindah home');
                  } else if (usernameController.text.isEmpty) {
                    Fluttertoast.showToast(
                      msg: 'Username tidak boleh kosong',
                      textColor: Colors.black,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.white,
                      fontSize: 15,
                    );
                  } else if (passwordController.text.isEmpty) {
                    Fluttertoast.showToast(
                      msg: 'Password tidak boleh kosong',
                      textColor: Colors.black,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.white,
                      fontSize: 15,
                    );
                  } else if (passwordController.text.length < 6) {
                    Fluttertoast.showToast(
                      msg: 'Password tidak boleh kurang dari 6 karakter',
                      textColor: Colors.black,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.white,
                      fontSize: 15,
                    );
                  } else {
                    Fluttertoast.showToast(
                        msg: 'Username dan Password salah',
                        textColor: Colors.black,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.white,
                        fontSize: 15);
                  }
                },
                color: Colors.blue,
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
          ),
        )));
  }
}
