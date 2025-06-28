import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mobile_wg/homepages/technician/sub/data_analyer.dart';
import 'package:mobile_wg/homepages/technician/sub/kunjungan_technician.dart';
import 'package:mobile_wg/homepages/technician/sub/pemeliharaan.dart';
import 'package:mobile_wg/homepages/technician/sub/perbaikan.dart';
import 'package:table_calendar/table_calendar.dart';

class TechnicianPage extends StatefulWidget {
  const TechnicianPage({super.key});

  @override
  State<TechnicianPage> createState() => _TechnicianPageState();
}

class _TechnicianPageState extends State<TechnicianPage> {
  // int _count = 0;

  // void _incrementCount() {
  //   setState(() {
  //     _count++;
  //   });
  // }

  // void _decrementCunot() {
  //   setState(() {
  //     _count--;
  //   });
  // }

  final CalendarFormat _calendarFormat = CalendarFormat.month;
  final DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // ignore: prefer_final_fields
  var _dataDummy1 = Slidable(
      endActionPane: ActionPane(motion: const StretchMotion(), children: [
        SlidableAction(
          onPressed: (context) {},
          icon: Icons.delete,
          backgroundColor: Colors.red,
        ),
      ]),
      child: Container(
          color: Colors.grey[200],
          child: ListTile(
            title: const Text('Product'),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('desckripsi'),
                Text('Rp. 0, 00'),
              ],
            ),
            isThreeLine: true,
            trailing: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.grey),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 16,
                            )),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.white),
                          child: const Text(
                            '0',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 16,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            leading: const Icon(
              Icons.table_bar,
              size: 50,
            ),
          )));
  final _dataDummy2 = Slidable(
      endActionPane: ActionPane(motion: const StretchMotion(), children: [
        SlidableAction(
          onPressed: (context) {},
          icon: Icons.delete,
          backgroundColor: Colors.red,
        ),
      ]),
      child: Container(
          color: Colors.grey[300],
          child: ListTile(
            title: const Text('Product'),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('desckripsi'),
                Text('Rp. 0, 00'),
              ],
            ),
            isThreeLine: true,
            trailing: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.grey),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 16,
                            )),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.white),
                          child: const Text(
                            '0',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 16,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            leading: const Icon(
              Icons.table_bar,
              size: 50,
            ),
          )));

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 100) / 20;
    final double itemWidth = size.width / 5;
    return Scaffold(
      // backgroundColor: Colors.lightBlue[100],
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          iconSize: 40,
          color: Colors.white,
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        title: const Text(
          'Technician',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgtechnician.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.10),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.white,
                      // color: Colors.orange[300],
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/kunjungan.png',
                              scale: 6,
                            ),
                            const SizedBox(height: 10),
                            const Text('Kunjungan',
                                style: TextStyle(
                                    // color: Colors.orange[800],
                                    // fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const KunjunganTechnician()),
                        );
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.10),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.white,
                      // color: Colors.red[300],
                      elevation: 0,

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/pemeliharaan.png',
                              scale: 6,
                            ),
                            const SizedBox(height: 10),
                            const Text('Pemeliharaan',
                                style: TextStyle(
                                    // color: Colors.red[800],
                                    // fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Pemeliharaan()),
                        );
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.10),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      // color: Colors.white38,
                      color: Colors.white,
                      // color: Colors.yellow[300],
                      elevation: 0,

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/perbaikan.png',
                              scale: 6,
                            ),
                            const SizedBox(height: 10),
                            const Text('Perbaikan',
                                style: TextStyle(
                                    // color: Colors.yellow[800],
                                    // fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Perbaikan()),
                        );
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.10),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.white,
                      // color: Colors.green[300],
                      elevation: 0,

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/dataanalyzer.png',
                              scale: 6,
                            ),
                            const SizedBox(height: 10),
                            const Text('Data Analyzer',
                                style: TextStyle(
                                    // color: Colors.green[800],
                                    // fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DataAnalyzer()),
                        );
                      },
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
