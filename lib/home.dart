import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () => Navigator.pushNamed(context, '/fisika'),
              minWidth: 100,
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.blue,
              child: Text(
                'Hitung Fisika',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () => Navigator.pushNamed(context, '/konversi'),
              minWidth: 100,
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.blue,
              child: Text(
                'Konversi Satuan Panjang',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
