import 'package:flutter/material.dart';

class Konversi extends StatefulWidget {
  @override
  _KonversiState createState() => _KonversiState();
}

class _KonversiState extends State<Konversi> {
  String panjangValue = 'm';
  String konversiValue = 'm';
  List unit = ['km', 'hm', 'dam', 'm', 'dm', 'cm', 'mm'];

  var panjangController = TextEditingController();
  var konversiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konversi Panjang'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text('Satuan Panjang'),
                Row(
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 30,
                      child: TextFormField(
                        controller: panjangController,
                        decoration: InputDecoration(
                          hintText: 'Masukkan Panjang',
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 40,
                      child: DropdownButton<String>(
                        value: panjangValue,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 16,
                        elevation: 10,
                        style: TextStyle(color: Colors.blue),
                        underline: Container(
                          height: 2,
                          color: Colors.black,
                        ),
                        onChanged: (String newValue) {
                          setState(() => panjangValue = newValue);
                        },
                        items: <String>[
                          'km',
                          'hm',
                          'dam',
                          'm',
                          'dm',
                          'cm',
                          'mm'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text('Konversi Panjang'),
                Row(
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 30,
                      child: TextFormField(
                        controller: konversiController,
                        decoration: InputDecoration(hintText: '0'),
                      ),
                    ),
                    Container(
                        width: 60,
                        height: 40,
                        child: DropdownButton<String>(
                          value: konversiValue,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 16,
                          elevation: 10,
                          style: TextStyle(color: Colors.blue),
                          underline: Container(
                            height: 2,
                            color: Colors.black,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              konversiValue = newValue;
                            });
                          },
                          items: <String>[
                            'km',
                            'hm',
                            'dam',
                            'm',
                            'dm',
                            'cm',
                            'mm',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ))
                  ],
                )
              ],
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            child: Text('Konversi'),
            onPressed: () {
              var start = unit.indexOf(panjangValue);
              var end = unit.indexOf(konversiValue);

              num a = num.parse(panjangController.text);
              num b = 10;
              if (start == end) {
                konversiController.text = panjangController.text;
                print(a);
              } else if (start < end) {
                var kali = unit.getRange(start, end);
                for (int i = 1; i < kali.length; i++) {
                  b *= 10;
                }
                var hasil = (a * b).toString();
                konversiController.text = hasil;
              } else if (start > end) {
                var bagi = unit.getRange(end, start);
                for (int i = 1; i > bagi.length; i--) {
                  b /= 10;
                }
                var hasil = (a / b).toDouble();
                print(hasil);
                // konversiController.text = hasil;
              }
            },
          )
        ],
      )),
    );
  }
}
