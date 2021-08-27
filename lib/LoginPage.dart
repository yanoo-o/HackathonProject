import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kaagapay/auth/fire_auth.dart';
import 'package:kaagapay/auth/validator.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static final _formKey = new GlobalKey<FormState>();
  static final _emailTextController = TextEditingController();
  static final _passwordTextController = TextEditingController();
  static final _focusEmail = FocusNode();
  static final _focusPassword = FocusNode();
  bool _isProcessing = false;

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    User? user = FirebaseAuth.instance.currentUser;

    /*if(user!= null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomePage(user:user),
        )
      );
    }*/
    return firebaseApp;
  }

  Widget emailTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 3,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: _emailTextController,
            focusNode: _focusEmail,
            style: TextStyle(color: Colors.black87),
            validator: (value) => Validator.validateEmail(email: value),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.email, color: Color(0xff64a1f4)),
                hintText: 'Email Address',
                hintStyle: TextStyle(color: Colors.black45) //5:25 right
                ),
          ),
        )
      ],
    );
  }

  Widget passwordTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextFormField(
            controller: _passwordTextController,
            focusNode: _focusPassword,
            obscureText: true,
            validator: (value) => Validator.validatePassword(password: value),
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.lock, color: Color(0xff64a1f4)),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.black45),
                ),
          ),
        )
      ],
    );
  }

  Widget forgotPwButton() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print('forgot pw lol'),
        style: TextButton.styleFrom(
          padding: EdgeInsets.only(right: 0),
        ),
        child: Text('Forgot Password?',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }

  Widget loginButton() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () async {
            _focusEmail.unfocus();
            _focusPassword.unfocus;
            if (_formKey.currentState!.validate()) {
              setState(() {
                _isProcessing = true;
              });
              User? user = await FireAuth.signInUsingEmailPassword(
                  email: _emailTextController.text,
                  password: _passwordTextController.text,
                  context: context);
              setState(() {
                _isProcessing = false;
              });

              /*if (user != null) {
                Navigator.of(context)
                    .pushReplacement(
                  MaterialPageRoute(
                    builder: (context) =>
                        HomePage(user: user),
                  ),
                );
              }*/
            }
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xff3b7dd8),
            onPrimary: Color(0xffbfd6f6),
            shadowColor: Colors.black12,
            elevation: 5,
            padding: EdgeInsets.all(15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          child: Text('Sign In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
        ));
  }

  Widget createAccButton() {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
          onPressed: () {
            /*Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    CreateAccount(),
              )
            );*/
          },
          child: Text('Create an account',
              style: TextStyle(
                  color: Color(0xff3b7dd8),
                  fontSize: 18,
                  fontWeight: FontWeight.w700))),
    );
  }

  Widget offlineAccessButton() {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
          onPressed: () => print('create acc'),
          child: Text('Access Offline',
              style: TextStyle(
                  color: Color(0xff3b7dd8),
                  fontSize: 18,
                  fontWeight: FontWeight.w700))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _focusEmail.unfocus();
        _focusPassword.unfocus();
      },
      child: Scaffold(
        body: FutureBuilder(
          future: _initializeFirebase(),
          builder: (context,snapshot) {
            return Stack(
              children: <Widget>[
                Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff3b7dd8),
                              Color(0xff4a91f2),
                              Color(0xff64a1f4),
                              Color(0xffbfd6f6),
                            ])),
                    child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        padding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'KAAGAPAY',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: <Widget>[
                                  emailTextField(),
                                  passwordTextField(),
                                  forgotPwButton(),
                                  _isProcessing
                                    ? CircularProgressIndicator()
                                    : Column(
                                        children: [
                                          SizedBox(
                                            child: loginButton(),
                                          )
                                        ],
                                      ),
                                  createAccButton(),
                                  offlineAccessButton(),
                                ]
                              )
                            ),
                          ],
                        )))
              ],
            );
          },
        )
        /*body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff3b7dd8),
                              Color(0xff4a91f2),
                              Color(0xff64a1f4),
                              Color(0xffbfd6f6),
                            ])),
                    child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        padding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'KAAGAPAY',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            emailTextField(),
                            passwordTextField(),
                            forgotPwButton(),
                            loginButton(),
                            createAccButton(),
                          ],
                        )))
              ],
            ),
          ),
        ),*/
      )
    ); // Scaffold
  }
}
