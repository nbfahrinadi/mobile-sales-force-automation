import 'package:flutter/material.dart';
import 'package:mobile_wg/screen_controller.dart';

class AbsensiIzin extends StatefulWidget {
  const AbsensiIzin({super.key});

  @override
  State<AbsensiIzin> createState() => _AbsensiIzin();
}

class _AbsensiIzin extends State<AbsensiIzin> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Absensi Izin',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: const Center());
  }
}
