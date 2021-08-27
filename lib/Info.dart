import 'package:flutter/material.dart';
import 'package:kaagapay/Animations/ScaleRoute.dart';
import 'package:kaagapay/Content/Diseases.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}
class _InfoPageState extends State<InfoPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Mga Karagdagang Impormasyon", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Builder(
          builder: (context){
            return ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.add_location),
                  title: Text('Malapit na Ospital at Klinik'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.notes),
                  title: Text('Impormasyon sa mga Sakit'),
                  onTap: () => {Navigator.push(context, ScaleRoute(page: DisPage()))},
                ),
                ListTile(
                  leading: Icon(Icons.notes),
                  title: Text('Impormasyon sa COVID-19'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.question_answer),
                  title: Text('Mga Karaniwang Tanong'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ],
            );
          }
      ),
    );
  }
}
