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
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Column(
                  children: <Widget>[
                    Text('Satuan Panjang'),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: 200,
                          height: 60,
                          child: TextFormField(
                            controller: panjangController,
                            decoration: InputDecoration(
                                hintText: 'Masukkan Panjang',
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: Colors.blue))),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 60,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.blue)),
                          child: DropdownButton<String>(
                            value: panjangValue,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 16,
                            elevation: 10,
                            style: TextStyle(color: Colors.blue),
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
                margin: EdgeInsets.only(top: 60),
                child: Column(
                  children: <Widget>[
                    Text('Konversi Panjang'),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: 200,
                          height: 60,
                          child: TextFormField(
                            controller: konversiController,
                            decoration: InputDecoration(
                              hintText: 'Hasil',
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.blue)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: Colors.blue))),
                          ),
                        ),
                        Container(
                            width: 80,
                            height: 60,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.blue)),
                            child: DropdownButton<String>(
                              value: konversiValue,
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 16,
                              elevation: 10,
                              style: TextStyle(color: Colors.blue),
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
              SizedBox(height: 50),
              MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Konversi',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  var start = unit.indexOf(panjangValue);
                  var end = unit.indexOf(konversiValue);

                  num a = num.parse(panjangController.text);
                  num b = 10;
                  if (start == end) {
                    konversiController.text = panjangController.text;
                  } else if (start > end) {
                    var bagi = unit.getRange(end, start);
                    for (int i = 1; i < bagi.length; i++) {
                      a /= 10;
                    }
                    var hasil = (a / 10).toDouble();
                    konversiController.text = hasil.toString();
                  } else if (start < end) {
                    var kali = unit.getRange(start, end);
                    for (int i = 1; i < kali.length; i++) {
                      b *= 10;
                    }
                    var hasil = (a * b).toString();
                    konversiController.text = hasil;
                  }
                },
              )
            ],
          )),
        ));
  }
}
