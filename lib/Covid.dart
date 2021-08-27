import 'package:flutter/material.dart';
import 'package:kaagapay/Content/OffHome.dart';
import 'package:kaagapay/Animations/ScaleRoute.dart';

class CovidPage extends StatefulWidget {
  @override
  _CovidPageState createState() => _CovidPageState();
}
class _CovidPageState extends State<CovidPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text("IMPORMASYON SA COVID-19", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
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
                                title: Text('MGA SINTOMAS'),
                                subtitle: Text('\nKaraniwang Sintomas:\n\n'
                                    'Lagnat\n'
                                    'Matigas na Ubo\n'
                                    'Panghihina\n'
                                    'Sakit sa Lalamunan\n'
                                    'Pananakit ng Ulo\n'
                                    'Pagkawala ng Panlasa at Pang=amoy\n\n'
                                    'Malalang Sintomas:\n\n'
                                    'Kahirapan sa Paghinga\n'
                                    'Pananakit o paninikip ng dibdib\n'
                                    'Kawalan ng abilidad na magsalita o kumilos\n'),
                              ),
                              ListTile(
                                title: Text('ANO ANG KAILANGANG GAWIN PAG MAY SINTOMAS:'),
                                subtitle: Text('\nMagreport sa inyong barangay\n'
                                    'Manatili lamang sa loob ng bahay\n'
                                    'Iwasan ang pakikihalubilo sa mga tao\n'),
                              ),
                              ListTile(
                                title: Text('MGA DAPAT GAWIN UPANG MAIWASAN ANG COVID:'),
                                subtitle: Text('\n1. Panatilihin ang pagsusuot ng Face Mask\n'
                                    '2. Palaging maghugas ng kamay at mag alcohol\n'
                                    '3. Iwasan ang paghawak sa Mata, Ilong, at Bunganga\n'
                                    '4. Panatilihin ang Social Distancing sa pampublikong lugar\n'
                                    '5. Kung maaari ay iwasan muna ang paglabas ng bahay\n'),
                              ),
                              ListTile(
                                title: Text('MGA DAPAT IKONTAK KUNG NAKARARAMDAM NG SINTOMAS:'),
                                subtitle: Text('\nCellphone Number: 09987654321\n'
                                    'Telepono: (054) 555-7896\n'
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