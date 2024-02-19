import 'package:flutter/material.dart';
import 'package:tugas_akhir/screens/admin/rekammedis/rekam_medis_screen.dart';
import 'package:tugas_akhir/screens/admin/setting/settting_screen.dart';

import '../../user/antrian/antrian_screen.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Dashboard"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: GridView.count(
        padding: EdgeInsets.all(24),
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            elevation: 16,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RekamMedisScreen(),
                  ),
                );
              },
              splashColor: Colors.greenAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/5.png',
                        height: 100,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Rekam Medis',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 5.0,
            ),
          ),
          Card(
            elevation: 16,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AntrianScreen(),
                  ),
                );
              },
              splashColor: Colors.greenAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/2.png',
                        height: 100,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Antrian',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 5.0,
            ),
          ),
          Card(
            elevation: 16,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingScreen(),
                  ),
                );
              },
              splashColor: Colors.greenAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/6.png',
                        height: 100,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Setting',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 5.0,
            ),
          ),
        ],
      ),
    );
  }
}
