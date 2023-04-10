import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m04/main.dart';

void main() {
  runApp(const MyApp());
}

class TodosDetailPage extends StatelessWidget {
  final String kegiatan;
  final String keterangan;
  final String tglMulai;
  final String tglSelesai;
  const TodosDetailPage(
      {super.key,
      required this.kegiatan,
      required this.keterangan,
      required this.tglMulai,
      required this.tglSelesai});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                child: Text(
                  "1",
                ),
              ),
              Column(
                children: [
                  Text(kegiatan.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(keterangan.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                width: 24,
              ),
              Column(
                children: [
                  Container(
                    color: Colors.blue,
                    child: Text(
                      "WORK",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Text(tglMulai),
                  Text(tglSelesai)
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
