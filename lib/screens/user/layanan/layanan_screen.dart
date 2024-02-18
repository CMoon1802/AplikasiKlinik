import 'package:flutter/material.dart';

class LayananScreen extends StatefulWidget {
  const LayananScreen({super.key});

  @override
  State<LayananScreen> createState() => _LayananScreenState();
}

class _LayananScreenState extends State<LayananScreen> {
  _LayananScreenState() {
    _selectedVal = _jenisLayanan[0];
  }

  String? _selectedVal = '';
  final _jenisLayanan = [
    'Pemeriksaan Ibu dan Anak',
    'Pemeriksaan Kehamilan',
    'Imunisasi dan KB'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.greenAccent,
        title: Text('Layanan Klinik'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Nama Lengkap",
                  labelText: "Nama Lengkap",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              DropdownButtonFormField(
                value: _selectedVal,
                items: _jenisLayanan
                    .map((e) => DropdownMenuItem(child: Text(e), value: e))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedVal = val as String;
                  });
                },
                decoration: InputDecoration(labelText: 'Jenis Layanan'),
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
                  'Daftar',
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
