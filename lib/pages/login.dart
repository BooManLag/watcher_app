import 'package:flutter/material.dart';
import 'package:watcher_movie_app/pages/homepage.dart';
import 'package:watcher_movie_app/pages/register.dart';
import 'package:watcher_movie_app/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  static const id = 'login_page';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = FirebaseAuth.instance;
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Center(
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
                  onChanged: (value) {
                    password = value;
                  },
                  style: kFormTextStyle,
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

                const SizedBox(height: 40),

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
                    onPressed: () async {
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: email.toString(),
                            password: password.toString());
                        if (user != null) {
                          Navigator.pushNamed(context, HomePage.id);
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Text(
                      "LOGIN",
                      style: kLogRegTextStyle,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                //No account button
                TextButton(
                  child: Text("Don't have an account?"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    alignment: Alignment.center,
                    textStyle: kQuestionLogReg,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Register.id);
                  },
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
