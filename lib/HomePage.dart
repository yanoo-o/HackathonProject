import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaagapay/widget/NaviDrawer.dart';

import 'Animations/ScaleRoute.dart';
import 'Content/Info.dart';


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

  Widget emergencyButton(){
    return Container(
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 22),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () async {
            /*Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      EmergencyChat(),
                )
            );*/
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.redAccent,
            onPrimary: Color(0xffbfd6f6),
            shadowColor: Colors.black12,
            elevation: 5,
            padding: EdgeInsets.all(3),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          child: Text('MAY EMERGENCY',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
        ));
  }

  Widget consultButton(){
    return Container(
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 22),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () async {
            /*Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      ConsultPage(),
                )
            );*/
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.blue.shade900,
            onPrimary: Color(0xffbfd6f6),
            shadowColor: Colors.black12,
            elevation: 5,
            padding: EdgeInsets.all(3),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          child: Text('KUMONSULTA / MAGTANONG',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
        ));
  }

  Widget infoButton(){
    return Container(
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 22),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, ScaleRoute(page: InfoPage()));
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.blue.shade900,
            onPrimary: Color(0xffbfd6f6),
            shadowColor: Colors.black12,
            elevation: 5,
            padding: EdgeInsets.all(3),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          child: Text('IMPORMASYON',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
        ));
  }

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue.shade50, Colors.blue.shade300])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: Text("KAAGAPAY"),
            backgroundColor: Colors.indigo,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context, ScaleRoute(page: InfoPage()));
                },
              ),
            ],
          ),
          drawer: NaviDrawer(user: _currentUser),
          body: SingleChildScrollView(
              child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Text(
                      'PAUNAWA',
                      style: TextStyle(
                        fontSize: 20, color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      // adding margin
                      height: 300.0,
                      width: double.infinity,
                      margin: const EdgeInsets.all(15.0),

                      // adding padding

                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(

                        // adding borders around the widget
                        color: Colors.white.withOpacity(0.6),
                        border: Border.all(
                          color: Colors.black38,
                          width: 5.0,

                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // SingleChildScrollView should be
                      // wrapped in an Expanded Widget
                      child: Expanded(

                        //contains a single child which is scrollable
                        child: SingleChildScrollView(

                          //for horizontal scrolling
                          scrollDirection: Axis.vertical,

                          child: Text(
                            "MGA PAALALA MULA SA DEPARTMENT OF HEALTH:\n\n"
                                "Panatilihin ang pagsusuot ng Face Mask tuwing lalabas ng bahay. Magdala ng alcohol at huwag "
                                "makihalubilo sa lugar na maraming tao.\n\n"
                                "Lahat ng batang may edad 3 pababa ay kailangang dalhin sa health center para sa pagbabakuna.\n\n"
                                "Kung kayo ay may mga kasakitan tulad ng HIKA, ALTAPRESYON, PULMONYA, AT IBA PA, o kaya naman"
                                "kayo ay may edad 60 pataas, maaaring pumunta sa inyong barangay upang magparehistro sa bakuna "
                                "kontra COVID-19.\n\n"
                                "Para sa kaalaman ng lahat, ang ating bayan ay nakapasailalim sa General Community Quarantine "
                                "o GCQ kaya naman ipinagbabawal muna ang malakihang pagtitipon. Ang mahuhuli ay maaaring MAKULONG"
                                "o pagmumultahin ng halagang P5,000.00 o limang libo.\n"
                                "Lahat ng batang may edad 3 pababa ay kailangang dalhin sa health center para sa pagbabakuna"
                                "Lahat ng batang may edad 3 pababa ay kailangang dalhin sa health center para sa pagbabakuna"
                                "Lahat ng batang may edad 3 pababa ay kailangang dalhin sa health center para sa pagbabakuna"
                                "Lahat ng batang may edad 3 pababa ay kailangang dalhin sa health center para sa pagbabakuna\n"
                                "Lahat ng batang may edad 3 pababa ay kailangang dalhin sa health center para sa pagbabakuna"
                                "Lahat ng batang may edad 3 pababa ay kailangang dalhin sa health center para sa pagbabakuna\n"


                            ,
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 15.0,
                                letterSpacing: 3,
                                wordSpacing: 2,
                                height: 1.5
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    emergencyButton(),
                    consultButton(),
                    infoButton(),
                  ]
              )
          ),
        )
    );
  }
}