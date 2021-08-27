import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kaagapay/widget/NaviDrawer.dart';

class HomePage extends StatefulWidget {
  final User? user;
  const HomePage({this.user});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isSendingVerification = false;
  bool _isSigningOut = false;

  late User? _currentUser;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: IF CURRENT USER IS MARITES OR NENA, CHANGE LANDING PAGE
    if (_currentUser?.displayName == 'Juan dela Cruz') {
      print("hi!!");
      //return FarmerPage(user: _currentUser);
      return MaterialApp(
        home: Text('Hello World'),
      );
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("HOME"),
        //backgroundColor: kPrimaryColor,
      ),
      drawer: NaviDrawer(user: _currentUser),
      //body: Market(user: _currentUser),
    );
  }
}