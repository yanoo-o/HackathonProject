import 'package:flutter/material.dart';
import 'package:kaagapay/Content/SJGH.dart';
import 'package:kaagapay/Animations/ScaleRoute.dart';


class HospPage extends StatefulWidget {
  @override
  _HospPageState createState() => _HospPageState();
}
class _HospPageState extends State<HospPage>{
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
                  child: Text("MGA OSPITAL O KLINIK", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
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
                      leading: Icon(Icons.local_hospital),
                      title: Text('San Jose General Hospital'),
                      subtitle: Text('Lucena City'),
                      onTap: () => {Navigator.push(context, ScaleRoute(page: SJGHPage()))},
                    ),
                    ListTile(
                      leading: Icon(Icons.local_hospital),
                      title: Text('Barangay Concepcion Clinic'),
                      subtitle: Text('Brgy Concepcion, Lucena City'),
                      onTap: () => {},
                    ),
                    ListTile(
                      leading: Icon(Icons.local_hospital),
                      title: Text('St. Jude Hospital'),
                      subtitle: Text('14, Bagumbayan Ave., Lucena City'),
                      onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                      leading: Icon(Icons.local_hospital),
                      title: Text('Our Lourdes Infirmary'),
                      subtitle: Text('Penafrancia Ave., Lucena City'),
                      onTap: () => {Navigator.of(context).pop()},
                    ),
                  ],
                );
              }
          ),

        )

    );

  }
}