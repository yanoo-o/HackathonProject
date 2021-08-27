import 'package:flutter/material.dart';
import 'package:kaagapay/Content/OffHome.dart';
import 'package:kaagapay/Animations/ScaleRoute.dart';

class SJGHPage extends StatefulWidget {
  @override
  _SJGHPageState createState() => _SJGHPageState();
}
class _SJGHPageState extends State<SJGHPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text("SAN JOSE GENERAL HOSPITAL", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Builder(
          builder: (context){
            return Column(
              children:[
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: ListTile.divideTiles( //          <-- ListTile.divideTiles
                     context: context,
                     tiles: [
                          ListTile(
                            title: Text('LOKASYON'),
                            subtitle: Text('\nPanganiban Avenue, Lucena City\n'),
                          ),
                          ListTile(
                            title: Text('IMPORMASYON'),
                            subtitle: Text('\nCellphone Number: 09123456789 (SMART)\n'
                           '                           09223344556(GLOBE)\n'
                            'Email: sjghospital@gmail.com\n'),
                          ),
                          ListTile(
                           title: Text('MGA SERBISYO'),
                           subtitle: Text('\nEmergency Room\n'
                              'Konsultasyon sa Doktor\n'
                              'Mga Laboratory Test\n'),
                          ),
                          ListTile(
                            title: Text('EMERGENCY ROOM'),
                            subtitle: Text('\nCellphone Number: 09987654321\n'
                              'Telepono: 555-7896\n'
                              ),
                          ),
                          ListTile(
                            title: Text('PRESYO'),
                            subtitle: Text('\nKonsultasyon: P 500.00\n'
                             'Laboratory: Mula P 500.00 hanggang P10,000.00\n'
                              ),
                          ),
                         ]
                      ).toList(),

                   )

                ),
                ElevatedButton(
                  onPressed: () {Navigator.push(context, ScaleRoute(page: OffHome()));},
                  style: ButtonStyle(
                      padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(30)),
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
                    "BUMALIK SA UNANG SCREEN",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20)
            ]
            );
          }
      ),

    );
  }
}