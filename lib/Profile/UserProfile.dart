import 'package:flutter/material.dart';
import 'package:kaagapay/Profile/JuanProfile.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    final user = Profiles.JuanProfile;

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget
        ],
      ),
    );
  }
}