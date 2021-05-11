import 'package:flutter/material.dart';
import 'package:proyekakhir/Halaman/home.dart';

class Opening extends StatefulWidget {
  @override
  _OpeningState createState() => _OpeningState();
}

class _OpeningState extends State<Opening> {
  final namaController = new TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    namaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(
                'https://icons.iconarchive.com/icons/dtafalonso/android-lollipop/512/Movie-Studio-icon.png'),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    controller: namaController,
                    decoration: InputDecoration(
                      hintText: 'Masukkan Nama Anda..',
                      errorText: _validate ? 'Nama Harus Diisi!' : null,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (namaController.text.isEmpty) {
                            _validate = true;
                          } else {
                            var nama = namaController.text;
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HalamanUtama(user: nama);
                            }));
                          }
                        });
                      },
                      child: Text("Masuk"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
