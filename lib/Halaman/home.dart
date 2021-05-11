import 'package:flutter/material.dart';
import 'package:proyekakhir/Halaman/detail.dart';
import 'package:proyekakhir/model/data.dart';

class HalamanUtama extends StatelessWidget {
  final user;
  HalamanUtama({@required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 8,
        title: Center(
          child: Text("DAFTAR FILM"),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Selamat Datang $user !!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Expanded(
            flex: 1,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1),
              itemCount: filmList.length,
              itemBuilder: (context, index) {
                final Film data = filmList[index];
                return Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Detail(
                          data: data,
                        );
                      }));
                    },
                    child: Card(
                      elevation: 8,
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.network(data.thumbnail),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            data.judul,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                            child: Text(
                              data.tahun,
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class HalamanUtama extends StatefulWidget {
//   final Film film;

//   HalamanUtama({this.film});
//   @override
//   _HalamanUtamaState createState() => _HalamanUtamaState();
// }

// class _HalamanUtamaState extends State<HalamanUtama> {
//   @override
//   Widget build(BuildContext context) {
//   }
// }
