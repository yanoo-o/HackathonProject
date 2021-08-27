import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kaagapay/LoginPage.dart';
import 'package:flutter/cupertino.dart';

class NaviDrawer extends StatefulWidget{
  final User? user;
  const NaviDrawer({this.user});

  @override
  _NaviDrawerState createState() => _NaviDrawerState();
}

class _NaviDrawerState extends State<NaviDrawer> {
  @override
  late User? _currentUser;
  bool _isSigningOut = false;

  @override
  void initState(){
    _currentUser = widget.user;
    super.initState();
  }

  Widget build(BuildContext context) {
    if (_currentUser != null) {
      if(_currentUser?.displayName == null) {
        return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName:
                Text( 'Hello, Patient!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    )),
                accountEmail:
                Text( '${_currentUser?.email}',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Image.network('https://icon-icons.com/icon/person/110935'),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Color(0xffbfd6f6),
                          Color(0xff64a1f4),
                          Color(0xff3b7dd8),
                        ])
                ),
              ),
              ListTile(
                title: Text('PROFILE', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                title: Text('PRESCRIPTIONS', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                title: Text('ACTIVITY', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                title: Text('SETTINGS', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                title: Text('REWARDS', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                title: Text('LOG OUT', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onTap: () async{
                  setState((){
                    _isSigningOut = true;
                  });
                  await FirebaseAuth.instance.signOut();
                  setState(() {
                    _isSigningOut = false;
                  });
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginPage(),)
                  );
                },
              ),
            ],
          ),
        );
      };
      return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName:
                  Text( 'Hello, ${_currentUser?.displayName}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                    )),
                accountEmail:
                  Text( '${_currentUser?.email}',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://st3.depositphotos.com/1767687/16607/v/600/depositphotos_166074422-stock-illustration-default-avatar-profile-icon-grey.jpg'),
              ),
            ),
            ListTile(
              title: Text('PROFILE', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              title: Text('PRESCRIPTIONS', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              title: Text('ACTIVITY', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              title: Text('SETTINGS', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              title: Text('REWARDS', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              title: Text('LOG OUT', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onTap: () async{
                setState((){
                  _isSigningOut = true;
                });
                await FirebaseAuth.instance.signOut();
                setState(() {
                  _isSigningOut = false;
                });
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginPage(),)
                );
              },
            ),
          ],
        ),
      );
    }
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: Text('LOG IN / SIGN UP', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginPage(),)
              );
            },
          ),
          ListTile(
            title: Text('PROFILE', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            title: Text('PRESCRIPTIONS', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            title: Text('ACTIVITY', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            title: Text('SETTINGS', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            title: Text('REWARDS', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}