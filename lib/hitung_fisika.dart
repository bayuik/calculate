import 'package:flutter/material.dart';

class HitungFisika extends StatefulWidget {
  @override
  _HitungFisikaState createState() => _HitungFisikaState();
}

class _HitungFisikaState extends State<HitungFisika> {

  var panjangController = TextEditingController();
  var lebarController = TextEditingController();

  var luas = "0";

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
              Text('Hitung Luas'),
              Container(
                child: TextFormField(
                  controller: panjangController,
                  decoration: InputDecoration(hintText: 'Panjang'),
                ),
              ),
              Container(
                child: TextFormField(
                  controller: lebarController,
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
                  int hasil = int.parse(lebarController.text) *
                      int.parse(panjangController.text);
                  setState(() => luas = hasil.toString());
                },
              ),
              Text(luas),
            ],
          ),
        ),
      ),
    );
  }
}
