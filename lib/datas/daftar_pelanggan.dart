import 'package:flutter/material.dart';

class DaftarPelanggan extends StatefulWidget {
  const DaftarPelanggan({super.key});

  @override
  State<DaftarPelanggan> createState() => DaftarPelangganState();
}

class DaftarPelangganState extends State<DaftarPelanggan> {
  final _pelanggan = ListTile(
    onTap: () {},
    leading: const Icon(
      Icons.person,
      size: 50,
    ),
    title: const Text('Nama Pelanggan'),
    subtitle: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Deskripsi'),
        // Text('Rp. 0, 00'),
      ],
    ),
    // isThreeLine: true,
    trailing: const Icon(Icons.keyboard_arrow_right),
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
          body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
        ),
        itemCount: 20,
        itemBuilder: (context, index) => Center(child: Ink(child: _pelanggan)),
      )),
    );
  }
}
