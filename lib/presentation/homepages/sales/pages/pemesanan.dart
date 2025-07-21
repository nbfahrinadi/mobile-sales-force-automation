import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:dropdown_search/dropdown_search.dart';

class Pemesanan extends StatefulWidget {
  const Pemesanan({super.key});

  @override
  State<Pemesanan> createState() => _PemesananState();
}

class _PemesananState extends State<Pemesanan> {
  final _cariproduk = ListTile(
    leading: const Icon(Icons.dock),
    title: const Text('Nama Produk'),
    subtitle: const Text('Rp. 0, 00'),
    onTap: () {},
  );
  final _produk = Slidable(
    endActionPane: ActionPane(motion: const StretchMotion(), children: [
      SlidableAction(
        onPressed: ((context) {}),
        icon: Icons.delete,
        backgroundColor: Colors.red,
      )
    ]),
    child: Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                'assets/images/zybio.png',
                scale: 1,
              ),
            ),
            const SizedBox(width: 0),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Nama Produk',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Rp. 0, 00'),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove_circle_outline,
                            color: Colors.lightBlueAccent,
                          )),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          '1',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.lightBlueAccent,
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );

  final Map<String, bool> _map = {};
  final int _count = 0;

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          // title: Center(child: Text("Riwayat Pemeriksaan")),
          content: SizedBox(
            height: 500,
            child: Column(
              children: [
                TextFormField(
                  style: const TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    hintText: 'Cari Barang',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        style: BorderStyle.none,
                        width: 0,
                      ),
                    ),
                    suffixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
                Expanded(
                    child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  children: [
                    // const SizedBox(height: 20),
                    _cariproduk,
                    _cariproduk,
                    _cariproduk,
                    _cariproduk,
                    _cariproduk,
                    _cariproduk,
                    _cariproduk,
                    _cariproduk,
                    _cariproduk,
                  ],
                ))
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            iconSize: 40,
            color: Colors.white,
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Pemesanan',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: (() {}),
                  child: const Text(
                    'Histori',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
            )
            // IconButton(icon: const Icon(Icons.history), onPressed: () {}),
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Colors.lightBlue[100],
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Theme(
                  data: ThemeData(
                      textTheme: const TextTheme(
                          titleMedium:
                              TextStyle(fontSize: 12, fontFamily: 'Poppins'))),
                  child: DropdownSearch<String>(
                    decoratorProps: const DropDownDecoratorProps(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                            width: 0,
                          ),
                        ),
                        suffixIcon: Icon(Icons.calendar_month),
                        filled: true,
                        fillColor: Colors.white,

                        hintText: 'List Pelanggan',
                        // labelText: 'Search Pelanngan',
                        // filled: true,
                        // fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                      ),
                    ),
                    // items: const [
                    //   'RS. Satu',
                    //   'RS. Dua',
                    //   'RS. Tiga',
                    //   'RS. Empat',
                    //   'RS. Lima',
                    //   'RS. Enam'
                    // ],
                    // items: List.generate(50, (i) => i),
                    popupProps: const PopupProps.modalBottomSheet(
                        showSearchBox: true, fit: FlexFit.loose
                        // title: Text('List Pelanggan'),
                        ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.lightBlue[100],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 10, left: 10, right: 10),
                child: TextFormField(
                  style: const TextStyle(fontSize: 12),
                  decoration: const InputDecoration(
                    hintText: 'No. SP',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        style: BorderStyle.none,
                        width: 0,
                      ),
                    ),
                    // suffixIcon: Icon(Icons.clear),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.5),
                //     spreadRadius: 10,
                //     blurRadius: 10,
                //     offset: const Offset(10, 10), // changes position of shadow
                //   ),
                // ],
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(20),
                //   bottomRight: Radius.circular(20),
                // )
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 20, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Daftar Pemesanan',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.lightBlueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () {
                            _showDialog(context);
                          },
                          child: const Text(
                            '+ Tambah Produk',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )),
                    )
                  ],
                ),
              ),
            ),
            // const SizedBox(height: 10),
            Expanded(
              child: Container(
                color: Colors.lightBlue[100],
                child: ListView(
                  children: [
                    // const Text('Daftar Barang Pemesanan'),
                    // const Divider(thickness: 1),
                    Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: _produk,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: _produk,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: _produk,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: _produk,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: _produk,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: _produk,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlue[100],
          elevation: 20,
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: const BoxDecoration(
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.grey.withOpacity(0.10),
                            //     spreadRadius: 0,
                            //     blurRadius: 10,
                            //     offset: const Offset(
                            //         0, 0), // changes position of shadow
                            //   ),
                            // ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Harga',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                ' Rp. 0, 00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.10),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: const Offset(
                                  0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.lightBlueAccent,
                          // color: Colors.orange[300],
                          elevation: 0,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'Pesan',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          onPressed: () {},
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          // floatingActionButton: FloatingActionButton(
          //   child: const Icon(Icons.shopping_cart),
          //   onPressed: () {},
          //   // onPressed: () => setState(() =>
          //   // _map.addEntries([MapEntry('Checkbox #${++_count}', false)]),
          // ),
        ));
  }
}
