import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TambahRekamMedisScreen extends StatefulWidget {
  const TambahRekamMedisScreen({super.key});

  @override
  State<TambahRekamMedisScreen> createState() => _TambahRekamMedisScreenState();
}

class _TambahRekamMedisScreenState extends State<TambahRekamMedisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.greenAccent,
        title: Text('Rekam Medis'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: "No Rekam Medis",
                  labelText: "No Rekam Medis",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Nama Pasien",
                  labelText: "Nama Pasien",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Jenis Kelamin",
                  labelText: "Jenis Kelamin",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Tempat/Tgl Lahir",
                  labelText: "Tempat/Tgl Lahir",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Alamat",
                  labelText: "Alamat",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Usia",
                  labelText: "Usia",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Status",
                  labelText: "Status",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Telepon",
                  labelText: "Telepon",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Catatan Tambahan",
                  labelText: "Catatan Tambahan",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text('Sukses'),
                      content: SizedBox(
                        height: 50,
                        child: Text('Data Sukes Terkirim'),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'Ok');
                          },
                          child: Text('Ok'),
                        )
                      ],
                    ),
                  );
                },
                child: Text(
                  'Tambahkan',
                ),
                style: ElevatedButton.styleFrom(primary: Colors.greenAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
