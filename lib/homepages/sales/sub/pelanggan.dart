import 'package:flutter/material.dart';
import 'package:mobile_wg/datas/daftar_pelanggan.dart';
import 'package:table_calendar/table_calendar.dart';

class Pelanggan extends StatefulWidget {
  const Pelanggan({super.key});

  @override
  State<Pelanggan> createState() => _PelangganState();
}

class _PelangganState extends State<Pelanggan> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  final DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  final Map<String, bool> _map = {};
  final int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pelanggan'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          _pelanggan(context);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => KunjunganHistori()),
                          // );
                        },
                        child: const Text('Pelanggan Baru ')),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Center(child: Text('Daftar Pelanggan')),
              ))
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Nama Pelanggan'),
                Icon(Icons.short_text),
              ],
            ),
          ),
          const DaftarPelanggan()
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () => setState(() =>
      //       _map.addEntries([MapEntry('Checkbox #${++_count}', false)])),
      // ),
    );
  }
}

void _pelanggan(context) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext bc) {
        // return Container();
        return SizedBox(
          height: MediaQuery.of(context).copyWith().size.height * 0.80,
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(flex: 2, child: Container()),
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                color: Colors.grey),
                            height: 5,
                          )),
                      Expanded(flex: 2, child: Container()),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: const [Expanded(child: Text('Pelanggan Baru'))],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // NAMA
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // icon: Icon(Icons.person),
                          hintText: '',
                          labelText: 'Nama',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Silahkan mengisi data'
                              : null;
                        },
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //E-MAIL
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // icon: Icon(Icons.person),
                          hintText: '',
                          labelText: 'E-mail',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Silahkan mengisi data'
                              : null;
                        },
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //E-MAIL
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // icon: Icon(Icons.person),
                          hintText: '',
                          labelText: 'Handphone',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Silahkan mengisi data'
                              : null;
                        },
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //E-MAIL
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // icon: Icon(Icons.person),
                          hintText: '',
                          labelText: 'Alamat',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Silahkan mengisi data'
                              : null;
                        },
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text('Create')),
                      )),
                    ],
                  ),
                ],
              )),
        );
      });
}
