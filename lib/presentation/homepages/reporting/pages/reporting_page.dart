import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_sales_force_automation/presentation/homepages/reporting/pages/detail_reporting.dart';
import 'package:mobile_sales_force_automation/presentation/homepages/reporting/pages/tambah_reporting.dart';

class ReportingPage extends StatefulWidget {
  const ReportingPage({super.key});

  @override
  State<ReportingPage> createState() => _ReportingPageState();
}

class _ReportingPageState extends State<ReportingPage> {
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
          'Reporting',
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const HistoriPerbaikan()),
                // );
              }),
              child: const Text(
                'Arsip',
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
                  const SizedBox(height: 20),
                  //RUMAH SAKIT-----------------------------------------------
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailReporting(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 2,
                                      ),
                                      child: Text(
                                        'Rumah Sakit',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'RS. Sejahtera Nusa Sentosa Indah',
                                                overflow: TextOverflow.ellipsis,
                                                // maxLines: 2,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        // Container(
                                        //     // padding: const EdgeInsets.symmetric(horizontal: 10),
                                        //     decoration: const BoxDecoration(
                                        //         color: Colors.lightGreen,
                                        //         borderRadius:
                                        //             BorderRadius.all(
                                        //                 Radius.circular(50))),
                                        //     child: const Padding(
                                        //       padding: EdgeInsets.symmetric(
                                        //           horizontal: 10,
                                        //           vertical: 2),
                                        //       child: Text('Rumah Sakit',
                                        //           style: TextStyle(
                                        //             fontSize: 12,
                                        //             color: Colors.white,
                                        //           )),
                                        //     )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_month,
                                              size: 18,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              '17 Agustus 2022',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,

                                                // fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 18,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Text(
                                          'Jakarta',
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  const Divider(thickness: 1),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 40,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dr. Hanya Contoh Saja',
                                            style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Dokter Specialist',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 10),
                                  // const Text(
                                  //   'Dr. contoh',
                                  //   style: TextStyle(fontWeight: FontWeight.bold),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //KLINK-----------------------------------------------
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const DetailReporting()),
                        // );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 2,
                                      ),
                                      child: Text(
                                        'Klinik',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Klink Sejahtera Nusa Sentosa Indah',
                                                overflow: TextOverflow.ellipsis,
                                                // maxLines: 2,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        // Container(
                                        //     // padding: const EdgeInsets.symmetric(horizontal: 10),
                                        //     decoration: const BoxDecoration(
                                        //         color: Colors.lightGreen,
                                        //         borderRadius:
                                        //             BorderRadius.all(
                                        //                 Radius.circular(50))),
                                        //     child: const Padding(
                                        //       padding: EdgeInsets.symmetric(
                                        //           horizontal: 10,
                                        //           vertical: 2),
                                        //       child: Text('Rumah Sakit',
                                        //           style: TextStyle(
                                        //             fontSize: 12,
                                        //             color: Colors.white,
                                        //           )),
                                        //     )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_month,
                                              size: 18,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              '17 Agustus 2022',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,

                                                // fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 18,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Text(
                                          'Jakarta',
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  const Divider(thickness: 1),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 40,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dr. Hanya Contoh Saja',
                                            style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Dokter Umum',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 10),
                                  // const Text(
                                  //   'Dr. contoh',
                                  //   style: TextStyle(fontWeight: FontWeight.bold),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TambahReporting()),
            );
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
              DropdownSearch<String>(
                decoratorProps: const DropDownDecoratorProps(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        // style: BorderStyle.none,
                        width: 3,
                      ),
                    ),
                    suffixIcon: Icon(Icons.calendar_month),
                    filled: true,
                    fillColor: Colors.white,

                    hintText: 'Kategori',
                    // labelText: 'Search Pelanngan',
                    // filled: true,
                    // fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                  ),
                ),
                // items: const [
                //   'Rumah Sakit',
                //   'Klinik',
                //   'Lab',
                //   'Dokter Prakterk',
                //   'Bidan',
                //   'Apotek'
                // ],
                // items: List.generate(50, (i) => i),
                popupProps: const PopupProps.modalBottomSheet(
                  // showSearchBox: true,
                  fit: FlexFit.loose,
                  // title: Text('List Pelanggan'),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Nama Tempat',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 10.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      // style: BorderStyle.none,
                      width: 3,
                    ),
                  ),
                  // suffixIcon: Icon(Icons.clear),
                  filled: true,
                  fillColor: Colors.white,
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
              TextFormField(
                enableInteractiveSelection: false,
                onTap: () async {
                  await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2015),
                    lastDate: DateTime(2025),
                  ).then((selectedDate) {
                    if (selectedDate != null) {
                      startDate.text = DateFormat(
                        'yyyy-MM-dd',
                      ).format(selectedDate);
                    }
                  });
                },
                readOnly: true,
                controller: startDate,
                decoration: const InputDecoration(
                  hintText: 'Tanggal',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 10.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      // style: BorderStyle.none,
                      width: 3,
                    ),
                  ),
                  // suffixIcon: Icon(Icons.clear),
                  suffixIcon: Icon(Icons.calendar_month),
                  filled: true,
                  fillColor: Colors.white,
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
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Lokasi',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 10.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      // style: BorderStyle.none,
                      width: 3,
                    ),
                  ),
                  // suffixIcon: Icon(Icons.clear),
                  filled: true,
                  fillColor: Colors.white,
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
              DropdownSearch<String>(
                decoratorProps: const DropDownDecoratorProps(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        // style: BorderStyle.none,
                        width: 3,
                      ),
                    ),
                    suffixIcon: Icon(Icons.calendar_month),
                    filled: true,
                    fillColor: Colors.white,

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
              const SizedBox(height: 10),
              DropdownSearch<String>(
                decoratorProps: const DropDownDecoratorProps(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        // style: BorderStyle.none,
                        width: 3,
                      ),
                    ),
                    suffixIcon: Icon(Icons.calendar_month),
                    filled: true,
                    fillColor: Colors.white,

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
              const SizedBox(height: 10),
              TextFormField(
                minLines: 1,
                maxLines: 5, // allow user to enter 5 line in textfield
                keyboardType: TextInputType
                    .multiline, // user keyboard will have a button to move cursor to next line
                // controller: _Textcontroller,
                decoration: const InputDecoration(
                  hintText: 'Catatan Aktifitas',

                  contentPadding: EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 10.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      // style: BorderStyle.none,
                      width: 3,
                    ),
                  ),
                  // suffixIcon: Icon(Icons.clear),
                  filled: true,
                  fillColor: Colors.white,
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
