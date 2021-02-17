import 'package:flutter/material.dart';

class HitungFisika extends StatefulWidget {
  @override
  _HitungFisikaState createState() => _HitungFisikaState();
}

class _HitungFisikaState extends State<HitungFisika> {
  var panjangL = TextEditingController();
  var lebarL = TextEditingController();
  var panjangV = TextEditingController();
  var lebarV = TextEditingController();
  var tinggiV = TextEditingController();

  var luas = "0";
  var volume = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Fisika'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
                child: Column(
                  children: <Widget>[
                    Text('Hitung Luas'),
                    Container(
                      child: TextFormField(
                        controller: panjangL,
                        decoration: InputDecoration(hintText: 'Panjang'),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        controller: lebarL,
                        decoration: InputDecoration(hintText: 'Lebar'),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 100,
                      height: 40,
                      child: Text('Submit'),
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        int hasil =
                            int.parse(lebarL.text) * int.parse(panjangL.text);
                        setState(() => luas = hasil.toString());
                      },
                    ),
                    Text('$luas meter')
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow,
                ),
                child: Column(
                  children: <Widget>[
                    Text('Hitung Volume'),
                    Container(
                      child: TextFormField(
                        controller: panjangV,
                        decoration: InputDecoration(hintText: 'Panjang'),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        controller: lebarV,
                        decoration: InputDecoration(hintText: 'Lebar'),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        controller: tinggiV,
                        decoration: InputDecoration(hintText: 'Tinggi'),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 100,
                      height: 40,
                      child: Text('Submit'),
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        int hasil = int.parse(panjangV.text) *
                            int.parse(lebarV.text) *
                            int.parse(tinggiV.text);
                        setState(() => volume = hasil.toString());
                      },
                    ),
                    Text('$volume meter')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
