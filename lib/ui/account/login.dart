import 'package:coursehub/ui/account/forgot_password.dart';
import 'package:coursehub/ui/account/new_account.dart';
import 'package:coursehub/ui/account/static.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = new GlobalKey<FormState>();
  bool _password_visibility_hidden = true;
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Color(
              0xFFEBEAF2,
            ),
            height: _height,
            width: _width,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/logo.png',
                      ),
                      fit: BoxFit.fitHeight,
                      height: 100,
                    ),
                  ),
                ),
                Text(
                  "Log In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Email Address",
                              hintText: "Email Required",
                              labelStyle: labelStyle,
                              hintStyle: hintStyle,
                              border: InputBorder.none,
                              fillColor: coursehub_skyblue.withOpacity(0.1),
                              filled: true,
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Stack(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                      hintText: "Password Required",
                                      labelStyle: labelStyle,
                                      hintStyle: hintStyle,
                                      border: InputBorder.none,
                                      fillColor:
                                          coursehub_skyblue.withOpacity(0.1),
                                      filled: true,
                                    ),
                                    obscureText: _password_visibility_hidden,
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 15,
                                    child: _password_visibility_hidden
                                        ? InkWell(
                                            onTap: () {
                                              setState(() {
                                                _password_visibility_hidden =
                                                    false;
                                              });
                                            },
                                            child: Icon(Icons.visibility_off),
                                          )
                                        : InkWell(
                                            onTap: () {
                                              setState(() {
                                                _password_visibility_hidden =
                                                    true;
                                              });
                                            },
                                            child: Icon(
                                              Icons.visibility,
                                            ),
                                          ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 3.0,
                                ),
                                child: GestureDetector(
                                  onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => ForgotPassword(),
                                    ),
                                  ),
                                  child: Text(
                                    "Forgot Password",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Container(
                            color: coursehub_blue,
                            alignment: Alignment.center,
                            child: MaterialButton(
                              onPressed: null,
                              child: Text(
                                "LOG IN",
                                style: blueButtonTextStyle,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => NewAccount(),
                              ),
                            ),
                            child: Text(
                              "CREATE NEW ACCOUNT",
                              style: blueTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
