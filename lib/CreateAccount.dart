import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:kaagapay/auth/fire_auth.dart';
import 'package:kaagapay/auth/validator.dart';
import 'package:kaagapay/HomePage.dart';
import 'package:kaagapay/LoginPage.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _registerFormKey = GlobalKey<FormState>();

  final _nameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _confirmPWTextController = TextEditingController();

  final _focusName = FocusNode();
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();
  final _focusConfirmPW = FocusNode();

  User? user = FirebaseAuth.instance.currentUser;

  bool _isProcessing = false;

  Widget nameTextField(){
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
          height: 40,
          child: TextFormField(
            controller: _nameTextController,
            focusNode: _focusName,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 8),
                prefixIcon: Icon(Icons.person, color: Color(0xff64a1f4)),
                hintText: 'Name',
                hintStyle: TextStyle(color: Colors.black45)
            ),
          ),
        )
      ],
    );
  }

  Widget emailSignupField(){
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
          height: 40,
          child: TextFormField(
            controller: _emailTextController,
            focusNode: _focusEmail,
            style: TextStyle(color: Colors.black87),
            validator: (value) => Validator.validateEmail(email: value),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 8),
                prefixIcon: Icon(Icons.email, color: Color(0xff64a1f4)),
                hintText: 'Email Address',
                hintStyle: TextStyle(color: Colors.black45)
            ),
          ),
        )
      ],
    );
  }

  Widget passwordSignupField(){
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
          height: 40,
          child: TextFormField(
            controller: _passwordTextController,
            focusNode: _focusPassword,
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            validator: (value) => Validator.validatePassword(password: value),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 8),
                prefixIcon: Icon(Icons.lock, color: Color(0xff64a1f4)),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.black45),
                errorBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget confirmPasswordField(){
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
          height: 40,
          child: TextFormField(
            controller: _confirmPWTextController,
            focusNode: _focusConfirmPW,
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            validator: (value) => Validator.validateConfirmPassword(confirmPassword: value),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 8),
                prefixIcon: Icon(Icons.lock, color: Color(0xff64a1f4)),
                hintText: 'Confirm Password',
                hintStyle: TextStyle(color: Colors.black45),
            ),
          ),
        )
      ],
    );
  }

  Widget signupButton(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () async {
            setState(() {
              _isProcessing = true;
            });
            if (_registerFormKey.currentState!.validate()) {
              User? user = await FireAuth.registerUsingEmailPassword(
                name: _nameTextController.text,
                email: _emailTextController.text,
                password: _passwordTextController.text,
              );
            };

            setState((){
              _isProcessing = false;
            });

            if (user != null) {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) =>
                      HomePage(user: user!),
                ),
                ModalRoute.withName('/'),
              );
            }
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xff3b7dd8),
            onPrimary: Color(0xffbfd6f6),
            shadowColor: Colors.black12,
            elevation: 5,
            padding: EdgeInsets.all(3),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          child: Text('CREATE ACCOUNT',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700))),
    );
  }

  Widget moveToLogin() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 2),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () async {
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      LoginPage(),
                )
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Color(0xffbfd6f6),
            shadowColor: Colors.black12,
            elevation: 5,
            padding: EdgeInsets.all(3),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          child: Text('I ALREADY HAVE AN ACCOUNT',
              style: TextStyle(
                color: Color(0xff3b7dd8),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusName.unfocus();
        _focusEmail.unfocus();
        _focusPassword.unfocus();
        _focusConfirmPW.unfocus();
      },
      child: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle> (
          value: SystemUiOverlayStyle.light,
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
                    ]
                  )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
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
                      SizedBox(height: 20,),
                      nameTextField(),
                      emailSignupField(),
                      passwordSignupField(),
                      confirmPasswordField(),
                      SizedBox(height: 9),
                      _isProcessing
                          ? CircularProgressIndicator()
                          : Column(
                        children: [
                          SizedBox(
                            child: signupButton(),
                          )
                        ],
                      ),
                      moveToLogin(),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      )
    );
  }
}