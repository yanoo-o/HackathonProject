import 'package:flutter/material.dart';
import 'package:kaagapay/Content/Info.dart';
import 'package:kaagapay/Animations/ScaleRoute.dart';
import 'package:google_fonts/google_fonts.dart';

class DisPage extends StatefulWidget {
  @override
  _DisPageState createState() => _DisPageState();
}
class _DisPageState extends State<DisPage>{
  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue.shade50, Colors.blue.shade300])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: false,
            title: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("IMPORMASYON SA SAKIT", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            backgroundColor: Colors.indigo,
          ),

          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Container(
                  width: double.infinity
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(30)),
                      fixedSize:
                      MaterialStateProperty.all<Size>(Size.fromWidth(300)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.blue.shade900),
                          ))),
                  child: Text(
                    "PULMONYA",
                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(30)),
                      fixedSize:
                      MaterialStateProperty.all<Size>(Size.fromWidth(300)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.blue.shade900),
                          ))),
                  child: Text(
                    "DIABETES",
                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(30)),
                      fixedSize:
                      MaterialStateProperty.all<Size>(Size.fromWidth(300)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.blue.shade900),
                          ))),
                  child: Text(
                    "ALTAPRESYON",
                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(30)),
                      fixedSize:
                      MaterialStateProperty.all<Size>(Size.fromWidth(300)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.blue.shade900),
                          ))),
                  child: Text(
                    "TUBERCULOSIS",
                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(30)),
                      fixedSize:
                      MaterialStateProperty.all<Size>(Size.fromWidth(300)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.blue.shade900),
                          ))),
                  child: Text(
                    "KANSER",
                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(30)),
                      fixedSize:
                      MaterialStateProperty.all<Size>(Size.fromWidth(300)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.blue.shade900),
                          ))),
                  child: Text(
                    "HEPATITIS",
                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(30)),
                      fixedSize:
                      MaterialStateProperty.all<Size>(Size.fromWidth(300)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.blue.shade900),
                          ))),
                  child: Text(
                    "FLU O TRANGKASO",
                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(30)),
                      fixedSize:
                      MaterialStateProperty.all<Size>(Size.fromWidth(300)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.blue.shade900),
                          ))),
                  child: Text(
                    "ULCER",
                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
              ]
            )
          )

        )

    );

  }
}