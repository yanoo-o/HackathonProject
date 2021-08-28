import 'package:flutter/material.dart';
import 'package:kaagapay/Content/Info.dart';
import 'package:kaagapay/Animations/ScaleRoute.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';


class OffHome extends StatefulWidget {
  @override
  _OffHomeState createState() => _OffHomeState();
}

class _OffHomeState extends State<OffHome> {
  final _scrollController = ScrollController();

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
            title: Text("KAAGAPAY HOME"),
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
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
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
                    child: Scrollbar(
                      isAlwaysShown: true,
                      controller: _scrollController,
                      child: SingleChildScrollView(

                        //for horizontal scrolling
                        //scrollDirection: Axis.vertical,
                        controller: _scrollController,

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
                ),
                SizedBox(height: 10),

                ElevatedButton(
                  onPressed: (){
                    dynamic conversationObject = {
                      'appId': '161f124570ae7fbb9a80a249b9f432e53',// The [APP_ID](https://dashboard.kommunicate.io/settings/install) obtained from kommunicate dashboard.
                    };

                    KommunicateFlutterPlugin.buildConversation(conversationObject)
                        .then((clientConversationId) {
                      print("Conversation builder success : " + clientConversationId.toString());
                    }).catchError((error) {
                      print("Conversation builder error : " + error.toString());
                    });

                  },
                  style: ButtonStyle(
                      padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                      fixedSize:
                      MaterialStateProperty.all<Size>(Size.fromWidth(300)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue.shade900),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(color: Colors.blue.shade900),
                          ))),
                  child: Text(
                    "GUSTO KONG MAGTANONG",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, ScaleRoute(page: InfoPage()));
                  },
                  style: ButtonStyle(
                      padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(30)),
                      fixedSize:
                      MaterialStateProperty.all<Size>(Size.fromWidth(300)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blueAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(color: Colors.blueAccent),
                          ))),
                  child: Text(
                    "KARAGDAGANG IMPORMASYON",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ]
          )
        ),
      )
    );
  }
}

