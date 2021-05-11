import 'package:flutter/material.dart';
import 'package:proyekakhir/model/data.dart';

class Detail extends StatelessWidget {
  final Film data;

  Detail({@required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(data.thumbnail),
              Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  data.judul,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  '(' + data.tahun + ')',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Text(
                    data.keterangan,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Kembali'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
