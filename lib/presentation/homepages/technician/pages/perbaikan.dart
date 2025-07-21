import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:mobile_sales_force_automation/presentation/homepages/technician/pages/histori_perbaikan.dart';

class Perbaikan extends StatefulWidget {
  const Perbaikan({super.key});

  @override
  State<Perbaikan> createState() => _PerbaikanState();
}

class _PerbaikanState extends State<Perbaikan> {
  // final _dataAnalyzer = ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
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
          'Perbaikan',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
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
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HistoriPerbaikan(),
                  ),
                );
              }),
              child: const Text(
                'Histori',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          // IconButton(icon: const Icon(Icons.history), onPressed: () {}),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: [
                  // const Padding(
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  //   child: Text('Jadwal Kunjungan Hari Ini'),
                  // ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: const BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black.withOpacity(0.10),
                      //     spreadRadius: 0,
                      //     blurRadius: 10,
                      //     offset: const Offset(0, 0), // changes position of shadow
                      //   ),
                      // ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: MaterialButton(
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      onPressed: () {
                        _showDialog(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/images/wienerlabcm200.png',
                                  scale: 1,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Wienerlab CM-200',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  // const Text(
                                  //   'Dr. contoh',
                                  //   style: TextStyle(fontWeight: FontWeight.bold),
                                  // )
                                  Container(
                                    // padding: const EdgeInsets.symmetric(horizontal: 10),
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Belum',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: const BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black.withOpacity(0.10),
                      //     spreadRadius: 0,
                      //     blurRadius: 10,
                      //     offset: const Offset(0, 0), // changes position of shadow
                      //   ),
                      // ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: MaterialButton(
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      onPressed: () {
                        _showDialog(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/images/wienerlabcm200.png',
                                  scale: 1,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Wienerlab CM-200',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  // const Text(
                                  //   'Dr. contoh',
                                  //   style: TextStyle(fontWeight: FontWeight.bold),
                                  // )
                                  Container(
                                    // padding: const EdgeInsets.symmetric(horizontal: 10),
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Belum',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: const BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black.withOpacity(0.10),
                      //     spreadRadius: 0,
                      //     blurRadius: 10,
                      //     offset: const Offset(0, 0), // changes position of shadow
                      //   ),
                      // ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: MaterialButton(
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      onPressed: () {
                        _showDialog(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/images/wienerlabcm200.png',
                                  scale: 1,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Wienerlab CM-200',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  // const Text(
                                  //   'Dr. contoh',
                                  //   style: TextStyle(fontWeight: FontWeight.bold),
                                  // )
                                  Container(
                                    // padding: const EdgeInsets.symmetric(horizontal: 10),
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Belum',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 40,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 1,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          onPressed: () {
            tambahKunjungan(context);
          },
          child: const Text(
            '+ Tambah',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      // FloatingActionButton(
      //   elevation: 2,
      //   onPressed: () {
      //     tambahKunjungan(context);
      //   },
      //   tooltip: 'Search',
      //   backgroundColor: Colors.white,
      //   child: const Icon(Icons.add),
      // ),
    );
  }

  void tambahKunjungan(BuildContext context) {
    TextEditingController startDate = TextEditingController(text: '');
    TextEditingController startTime = TextEditingController(text: '');

    var items = ['Rumah Sakit', 'Klinik', 'Apotik', 'Bidan'];

    String dropdownValue = 'Rumah Sakit';
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: [
                  Expanded(flex: 2, child: Container()),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.grey,
                      ),
                      height: 5,
                    ),
                  ),
                  Expanded(flex: 2, child: Container()),
                ],
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                child: Text('Tambah Perbaikan Baru'),
              ),
              const SizedBox(height: 20.0),
              Theme(
                data: ThemeData(
                  textTheme: const TextTheme(
                    titleMedium: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                  ),
                ),
                child: DropdownSearch<String>(
                  decoratorProps: DropDownDecoratorProps(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 20.0,
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0,
                        ),
                      ),
                      suffixIcon: const Icon(Icons.calendar_month),
                      filled: true,
                      fillColor: Colors.grey[200],

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
                    showSearchBox: true,
                    fit: FlexFit.loose,
                    // title: Text('List Pelanggan'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                style: const TextStyle(fontSize: 12),
                decoration: InputDecoration(
                  hintText: 'No. TT',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 20.0,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(style: BorderStyle.none, width: 0),
                  ),
                  // suffixIcon: Icon(Icons.clear),
                  filled: true,
                  fillColor: Colors.grey[200],
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
              ),
              const SizedBox(height: 10),
              Theme(
                data: ThemeData(
                  textTheme: const TextTheme(
                    titleMedium: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                  ),
                ),
                child: DropdownSearch<String>(
                  decoratorProps: DropDownDecoratorProps(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 20.0,
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0,
                        ),
                      ),
                      suffixIcon: const Icon(Icons.calendar_month),
                      filled: true,
                      fillColor: Colors.grey[200],

                      hintText: 'List Analyzer',
                      // labelText: 'Search Pelanngan',
                      // filled: true,
                      // fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                    ),
                  ),
                  // items: const [
                  //   'Analyzer 1',
                  //   'Analyzer 2',
                  //   'Analyzer 3',
                  //   'Analyzer 4',
                  //   'Analyzer 5',
                  // ],
                  // items: List.generate(50, (i) => i),
                  popupProps: const PopupProps.modalBottomSheet(
                    showSearchBox: true,
                    fit: FlexFit.loose,
                    // title: Text('List Pelanggan'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Theme(
                data: ThemeData(
                  textTheme: const TextTheme(
                    titleMedium: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                  ),
                ),
                child: DropdownSearch<String>(
                  decoratorProps: DropDownDecoratorProps(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 20.0,
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0,
                        ),
                      ),
                      suffixIcon: const Icon(Icons.calendar_month),
                      filled: true,
                      fillColor: Colors.grey[200],

                      hintText: 'Sparepart',
                      // labelText: 'Search Pelanngan',
                      // filled: true,
                      // fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                    ),
                  ),
                  // items: const [
                  //   'Sparepart 1',
                  //   'Sparepart 2',
                  //   'Sparepart 3',
                  //   'Sparepart 4',
                  // ],
                  // items: List.generate(50, (i) => i),
                  popupProps: const PopupProps.modalBottomSheet(
                    showSearchBox: true,
                    fit: FlexFit.loose,
                    // title: Text('List Pelanggan'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                style: const TextStyle(fontSize: 12),
                minLines: 1,
                maxLines: 5, // allow user to enter 5 line in textfield
                keyboardType: TextInputType
                    .multiline, // user keyboard will have a button to move cursor to next line
                // controller: _Textcontroller,
                decoration: InputDecoration(
                  hintText: 'Catatan Aktifitas',

                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 20.0,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(style: BorderStyle.none, width: 0),
                  ),
                  // suffixIcon: Icon(Icons.clear),
                  filled: true,
                  fillColor: Colors.grey[200],
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
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Tambah Kunjungan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  // showDialog(
  //   context: context,
  //   builder: (BuildContext context) {
  //     return AlertDialog(
  //         title: const Text('Selesai pemeliharaan?'),
  //         shape: const RoundedRectangleBorder(
  //             borderRadius: BorderRadius.all(Radius.circular(15.0))),
  //         // title: Center(child: Text("Riwayat Pemeriksaan")),
  //         content: Column(
  //           children: const [],
  //         ));
  //   },
  // );
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      title: const Text("Selesai Perbaikan?"),
      // content: const Text("You have raised a Alert Dialog Box"),
      actions: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          onPressed: (() {
            Navigator.pop(context);
          }),
          child: const Text(
            'Batal',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          onPressed: (() {
            Navigator.pop(context);
          }),
          child: const Text(
            'Selesai',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),

        // TextButton(
        //   onPressed: () {
        //     Navigator.of(ctx).pop();
        //   },
        //   child: Container(
        //     color: Colors.green,
        //     padding: const EdgeInsets.all(14),
        //     child: const Text("okay"),
        //   ),
        // ),
      ],
    ),
  );
}
