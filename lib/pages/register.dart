import 'package:flutter/material.dart';
import 'package:watcher_movie_app/pages/homepage.dart';
import 'package:watcher_movie_app/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:watcher_movie_app/constants/constants.dart';
import 'package:watcher_movie_app/checking/register_check.dart';

// THERE IS STILL NO CHECK IF EMAIL ALREADY EXISTS,,, MAMAYA KO GAGAWIN
class Register extends StatefulWidget {
  static const String id = 'register_screen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<Register> {
  String? email;
  String? password;
  String? confirmPassword;
  String? username;
  bool activeButton = false;
  bool emailValidity = false;
  bool usernameValidity = false;
  bool passwordValidity = false;
  bool confirmPassValidity = false;
  bool passwordsMatch = false;
  String? _errorMessage;
  final _auth = FirebaseAuth.instance;

  void errorChecking(String message, String origin) {
    print(origin);
    print(message);
    _errorMessage = message;
    if (message != ' ') {
      setState(() {
        print(origin);
        if (origin == 'username') {
          usernameValidity = false;
        } else if (origin == 'email') {
          emailValidity = false;
        } else if (origin == 'password') {
          passwordValidity = false;
        } else if (origin == 'confirm') {
          confirmPassValidity = false;
        } else if (origin == 'button') {
          passwordsMatch = false;
        }
      });
    } else {
      if (origin == 'username') {
        usernameValidity = true;
      } else if (origin == 'email') {
        emailValidity = true;
      } else if (origin == 'password') {
        passwordValidity = true;
      } else if (origin == 'confirm') {
        confirmPassValidity = true;
      } else if (origin == 'button') {
        passwordsMatch = true;
      }
    }
  }

  void validFields() {
    if (emailValidity == true &&
        usernameValidity == true &&
        passwordValidity == true &&
        confirmPassValidity == true) {
      setState(() {
        activeButton = true;
      });
    } else {
      setState(() {
        activeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage('assets/images/watcher_logo.png'),
                      width: 130.0,
                      height: 130.0,
                    ),
                  ),
                  const SizedBox(height: 30),
                  //Username
                  TextFormField(
                    onChanged: (value) {
                      errorChecking(LoginRegisterCheck.validateUsername(value),
                          'username');
                      username = value;
                    },
                    style: kFormTextStyle,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFAE8537), width: 1.0),
                        borderRadius: BorderRadius.zero,
                      ),
                      hintText: 'Username',
                      hintStyle: kFormTextStyle,
                    ),
                  ),

                  const SizedBox(height: 30),

                  //Email
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      errorChecking(
                          LoginRegisterCheck.validateEmail(value), 'email');
                      email = value;
                    },
                    style: kFormTextStyle,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFAE8537), width: 1.0),
                        borderRadius: BorderRadius.zero,
                      ),
                      hintText: 'Email',
                      hintStyle: kFormTextStyle,
                    ),
                  ),

                  const SizedBox(height: 30),

                  //Password
                  TextFormField(
                    style: kFormTextStyle,
                    onChanged: (value) {
                      errorChecking(LoginRegisterCheck.validatePassword(value),
                          'password');
                      password = value;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFAE8537), width: 1.0),
                        borderRadius: BorderRadius.zero,
                      ),
                      hintText: 'Password',
                      hintStyle: kFormTextStyle,
                    ),
                  ),

                  const SizedBox(height: 30),

                  //Confirm Password
                  TextFormField(
                    style: kFormTextStyle,
                    onChanged: (value) {
                      errorChecking(LoginRegisterCheck.validatePassword(value),
                          'confirm');
                      confirmPassword = value;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFAE8537), width: 1.0),
                        borderRadius: BorderRadius.zero,
                      ),
                      hintText: 'Confirm Password',
                      hintStyle: kFormTextStyle,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      _errorMessage.toString(),
                      style: kPrompt,
                    ),
                  ),

                  const SizedBox(height: 30),

                  //Login button
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        primary: Color(0xFFAE8537),
                        minimumSize: Size.fromHeight(40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                      ),

                      //What happens when you press Register (backend?)
                      onPressed: () async {
                        validFields();
                        errorChecking(
                            LoginRegisterCheck.validatePasswords(
                                password.toString(),
                                confirmPassword.toString()),
                            'button');
                        if (activeButton == false) {
                          print('Button is disabled');
                          null;
                        } else {
                          try {
                            final newUser =
                                await _auth.createUserWithEmailAndPassword(
                                    email: email.toString(),
                                    password: password.toString());
                            if (newUser != null) {
                              Navigator.pushNamed(context, 'home_page');
                            }
                          } catch (e) {
                            print(e);
                          }
                        }
                      },
                      child: Text(
                        "REGISTER",
                        style: kLogRegTextStyle,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  //No account button
                  TextButton(
                    child: Text("Already a Watcher?"),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      alignment: Alignment.center,
                      textStyle: kQuestionLogReg,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Login.id);
                    },
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
