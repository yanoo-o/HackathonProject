import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kaagapay/LoginPage.dart';
import 'package:kaagapay/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Kaagapay());
}

//initialize Firebase
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<FirebaseApp> _initialization() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    User? user = FirebaseAuth.instance.currentUser;

    //if(user != null){
    //  Navigator.of(context).pushReplacement(
    //    MaterialPageRoute(
    //      builder: (context) => HomePage(user:user,)
    //    ) // MaterialPageRoute
    //  );
    //} return firebaseApp;
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Kaagapay();
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        }
    );
  }
}

class Kaagapay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kaagapay',
      theme: ThemeData(
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme,
        )
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
