import 'package:flutter/material.dart';
import 'package:mobile_wg/absensipage/absensi_keluar.dart';
import 'package:mobile_wg/absensipage/absensi_masuk.dart';
import 'package:mobile_wg/drawer.dart';

class AbsensiPage extends StatefulWidget {
  const AbsensiPage({super.key});

  @override
  State<AbsensiPage> createState() => _AbsensiPageState();
}

class _AbsensiPageState extends State<AbsensiPage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // _counter++;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 24,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
            );
          },
        ),
        title: const Text(
          'Absensi',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
      ),

      drawer: const SizedBox(
          // width: MediaQuery.of(context).size.width / 2,
          width: 250,
          child: DrawerList()),
      body: Center(
        child: Column(
          children: [
            // const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.10),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                      // color: const Color(0xff40c4ff),
                      color: Colors.white,
                      // borderRadius:
                      //     const BorderRadius.all(Radius.circular(20))
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          // Row(
                          //   children: [
                          //     const Expanded(
                          //         flex: 1,
                          //         child: Icon(
                          //           Icons.account_circle_rounded,
                          //           size: 60,
                          //           color: Colors.grey,
                          //         )),
                          //     Expanded(
                          //         flex: 3,
                          //         child: Column(
                          //           mainAxisAlignment: MainAxisAlignment.start,
                          //           crossAxisAlignment:
                          //               CrossAxisAlignment.start,
                          //           children: const [
                          //             Text(
                          //               'Nama Lengkap User',
                          //               style: TextStyle(
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.bold),
                          //             ),
                          //             Text('Title user'),
                          //           ],
                          //         ))
                          //   ],
                          // ),
                          // const Padding(
                          //   padding: EdgeInsets.all(10.0),
                          //   child: Divider(thickness: 1),
                          // ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            child: SizedBox(
                              height: 110,
                              child: GridView(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          mainAxisSpacing: 10,
                                          crossAxisSpacing: 20),
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color:
                                        //         Colors.black.withOpacity(0.10),
                                        //     spreadRadius: 0,
                                        //     blurRadius: 10,
                                        //     offset: const Offset(0,
                                        //         0), // changes position of shadow
                                        //   ),
                                        // ],
                                      ),
                                      child: MaterialButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        color: Colors.lightBlue[300],
                                        // color: Colors.orange[300],
                                        elevation: 0,
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.login_rounded,
                                                color: Colors.white,
                                                size: 40,
                                              ), // Image.asset(
                                              //   'assets/images/sales.png',
                                              //   scale: 10,
                                              // ),
                                              SizedBox(height: 10),
                                              Text('Masuk',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      // fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AbsensiMasuk()),
                                          );
                                        },
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color:
                                        //         Colors.black.withOpacity(0.10),
                                        //     spreadRadius: 0,
                                        //     blurRadius: 10,
                                        //     offset: const Offset(0,
                                        //         0), // changes position of shadow
                                        //   ),
                                        // ],
                                      ),
                                      child: MaterialButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          color: Colors.green[300],
                                          // color: Colors.red[300],
                                          elevation: 0,
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const AbsensiKeluar()),
                                            );
                                          },
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.logout_rounded,
                                                  color: Colors.white,
                                                  size: 40,
                                                ),
                                                // Image.asset(
                                                //   'assets/images/technician.png',
                                                //   scale: 10,
                                                // ),
                                                SizedBox(height: 10),
                                                Text('Keluar',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        // fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ],
                                            ),
                                          )),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color:
                                        //         Colors.black.withOpacity(0.10),
                                        //     spreadRadius: 0,
                                        //     blurRadius: 10,
                                        //     offset: const Offset(0,
                                        //         0), // changes position of shadow
                                        //   ),
                                        // ],
                                      ),
                                      child: MaterialButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          // color: Colors.white38,
                                          color: Colors.grey[300],
                                          // color: Colors.yellow[300],
                                          elevation: 0,
                                          onPressed: () {
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           const AbsensiIzin()),
                                            // );
                                          },
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.edit_note_rounded,
                                                  color: Colors.grey,
                                                  size: 40,
                                                ),
                                                // Image.asset(
                                                //   'assets/images/report.png',
                                                //   scale: 6,
                                                // ),
                                                SizedBox(height: 10),
                                                Text('Izin',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        // fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ],
                                            ),
                                          )),
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
                child: ListView(
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                    child: MaterialButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      onPressed: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //KATEGORI & JAM
                          // const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 80,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomLeft: Radius.circular(15)),
                                      color: Colors.lightBlueAccent),
                                ),
                              ),
                              const Expanded(
                                flex: 20,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Absensi Masuk',
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.calendar_month_rounded,
                                                  size: 20,
                                                  color: Colors.grey,
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  '17 Agustus 2022',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.access_time,
                                                  size: 20,
                                                  color: Colors.grey,
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  '10:00 AM',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),

                                      // const SizedBox(height: 5),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          // const SizedBox(height: 5)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                    child: MaterialButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      onPressed: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //KATEGORI & JAM
                          // const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomLeft: Radius.circular(15)),
                                      color: Colors.green[300]),
                                ),
                              ),
                              const Expanded(
                                flex: 20,
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Absensi Keluar',
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.calendar_month_rounded,
                                                  size: 20,
                                                  color: Colors.grey,
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  '17 Agustus 2022',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.access_time,
                                                  size: 20,
                                                  color: Colors.grey,
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  '06:00 PM',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),

                                      // const SizedBox(height: 5),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          // const SizedBox(height: 5)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
