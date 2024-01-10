import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TambahReporting extends StatefulWidget {
  const TambahReporting({super.key});

  @override
  State<TambahReporting> createState() => _TambahReportingState();
}

class _TambahReportingState extends State<TambahReporting> {
  // late final FocusNode focusNode = FocusNode()
  // ..addListener(() {
  //   setState(() {});
  // });
  // late FocusNode focusNode;
  // @override
  // void initState() {
  //   focusNode = FocusNode();
  //   focusNode.addListener(() {
  //     setState(() {});
  //   });
  //   super.initState();
  // }
  // @override
  // void initState() {
  //   var focusNode = FocusNode();
  //   focusNode.addListener(() {
  //     setState(() {});
  //   });
  //   super.initState();
  // }
  // final _dataAnalyzer = ;

  @override
  Widget build(BuildContext context) {
    TextEditingController startDate = TextEditingController(text: '');
    return Scaffold(
      backgroundColor: Colors.white,
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
          'Penambahan Reporting',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          // const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                color: Colors.lightBlue[100],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 10),
                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 0.0),
                  //   child: Text('Tambah Perbaikan Baru'),
                  // ),
                  // const SizedBox(
                  //   height: 10.0,
                  // ),
                  Row(
                    children: [
                      Flexible(
                        // flex: 3,
                        child: TextFormField(
                          style: const TextStyle(fontSize: 12),
                          enableInteractiveSelection: false,
                          onTap: () async {
                            await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2015),
                              lastDate: DateTime(2025),
                            ).then((selectedDate) {
                              if (selectedDate != null) {
                                startDate.text = DateFormat('yyyy-MM-dd')
                                    .format(selectedDate);
                              }
                            });
                          },
                          readOnly: true,
                          controller: startDate,
                          decoration: const InputDecoration(
                            hintText: 'Tanggal',

                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                style: BorderStyle.none,
                                width: 0,
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
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        // flex: 3,
                        child: Theme(
                          data: ThemeData(
                              textTheme: const TextTheme(
                                  subtitle1: TextStyle(
                                      fontSize: 12, fontFamily: 'Poppins'))),
                          child: DropdownSearch<String>(
                            dropdownDecoratorProps:
                                const DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 20.0),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    style: BorderStyle.none,
                                    width: 0,
                                  ),
                                ),
                                suffixIcon: Icon(Icons.calendar_month),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Kategori',
                                // hintStyle: TextStyle(fontSize: 13)
                                // labelText: 'Search Pelanngan',
                                // filled: true,
                                // fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                              ),
                            ),

                            items: const [
                              'Rumah Sakit',
                              'Klinik',
                              'Lab',
                              'Dokter Praktek',
                              'Bidan',
                              'Apotek'
                            ],
                            // items: List.generate(50, (i) => i),
                            popupProps: const PopupProps.modalBottomSheet(

                                // showSearchBox: true,
                                fit: FlexFit.loose
                                // title: Text('List Pelanggan'),
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  TextFormField(
                    style: const TextStyle(fontSize: 12),
                    // focusNode: focusNode,
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      filled: true,
                      // fillColor: focusNode.hasFocus ? Colors.white : null,
                      // filled: focusNode.hasFocus ? true : null,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.lightBlue, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      // hintStyle: const TextStyle(fontSize: 13),
                      hintText: 'Nama Tempat',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 20.0),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0,
                        ),
                      ),
                      // suffixIcon: Icon(Icons.clear),
                      // filled: true,
                      // fillColor: Colors.grey,
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
                    style: const TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      filled: true,
                      // fillColor: focusNode.hasFocus ? Colors.white : null,
                      // filled: focusNode.hasFocus ? true : null,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.lightBlue, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      // labelText: 'lokasi',
                      hintText: 'Lokasi',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 20.0),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0,
                        ),
                      ),
                      // suffixIcon: Icon(Icons.clear),
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
                    style: const TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      filled: true,
                      // fillColor: focusNode.hasFocus ? Colors.white : null,
                      // filled: focusNode.hasFocus ? true : null,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.lightBlue, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Nama yang dituju',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 20.0),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0,
                        ),
                      ),
                      // suffixIcon: Icon(Icons.clear),
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
                    style: const TextStyle(fontSize: 12),

                    minLines: 1,
                    maxLines: 5, // allow user to enter 5 line in textfield
                    keyboardType: TextInputType
                        .multiline, // user keyboard will have a button to move cursor to next line
                    // controller: _Textcontroller,
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      filled: true,
                      // fillColor: focusNode.hasFocus ? Colors.white : null,
                      // filled: focusNode.hasFocus ? true : null,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.lightBlue, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Jabatan',

                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 20.0),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0,
                        ),
                      ),
                      // suffixIcon: Icon(Icons.clear),
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
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(0))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 0.0),
                  //   child: Text('Tambah Perbaikan Baru'),
                  // ),
                  // const SizedBox(
                  //   height: 10.0,
                  // ),
                  const Text(
                    'Laporan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(fontSize: 12),
                          // expands: true,
                          // minLines: null,
                          maxLines:
                              9, // allow user to enter 5 line in textfield
                          keyboardType: TextInputType
                              .multiline, // user keyboard will have a button to move cursor to next line
                          // controller: _Textcontroller,
                          decoration: InputDecoration(
                            hintText: 'Catatan Aktifitas',

                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                style: BorderStyle.none,
                                width: 0,
                              ),
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
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Kegiatan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    color: Colors.black, //color of dotted/dash line
                    strokeWidth: 1, //thickness of dash/dots
                    dashPattern: const [10, 6],
                    radius: const Radius.circular(10),
                    //dash patterns, 10 is dash width, 6 is space width
                    child: Container(
                      height: 180, //height of inner container
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.grey[200]
                          // image: _imageFile == null
                          //     ? const AssetImage("")
                          //     : FileImage(File(_imageFile.path)),

                          ),
                      child: MaterialButton(
                        onPressed: () {
                          tambahKegiatan(context);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.image,
                              size: 50,
                              color: Colors.black54,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Tap Untuk Upload Gambar',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'Tambah Reporting',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          onPressed: () {
                            // Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Ulang',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: SizedBox(
      //   height: 40,
      //   child: ElevatedButton(
      //       style: ElevatedButton.styleFrom(
      //           elevation: 1,
      //           shape: const RoundedRectangleBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(10)))),
      //       onPressed: () {
      //         tambahKunjungan(context);
      //       },
      //       child: const Text(
      //         '+ Tambah',
      //         style:
      //             TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      //       )),
      // )
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

  void tambahKegiatan(BuildContext context) {
    TextEditingController startDate = TextEditingController(text: '');
    TextEditingController startTime = TextEditingController(text: '');

    var items = ['Rumah Sakit', 'Klinik', 'Apotik', 'Bidan'];

    String dropdownValue = 'Rumah Sakit';
    showModalBottomSheet(
        // shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        backgroundColor: Colors.white,
        context: context,
        isScrollControlled: true,
        builder: (context) => Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          const Text('Pilih Gambar'),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        elevation: 0),
                                    child: Row(
                                      children: const [
                                        Icon(Icons.camera),
                                        SizedBox(width: 10),
                                        Text('Camera'),
                                      ],
                                    )),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        elevation: 0),
                                    child: Row(
                                      children: const [
                                        Icon(Icons.image),
                                        SizedBox(width: 10),
                                        Text('Gallery'),
                                      ],
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ));
  }
}
