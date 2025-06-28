import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class KunjunganSales extends StatefulWidget {
  const KunjunganSales({super.key});

  @override
  State<KunjunganSales> createState() => _KunjunganTechnSalesState();
}

class _KunjunganTechnSalesState extends State<KunjunganSales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          // backgroundColor: Colors.lightBlue[100],
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            iconSize: 40,
            color: Colors.white,
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Kunjungan Sales',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView(
                  children: [
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text('Jadwal Kunjungan Hari Ini'),
                    ),
                    const SizedBox(height: 10),
                    //RUMAH SAKIT------------------------------------------
                    Container(
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //KATEGORI & JAM
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    // padding: const EdgeInsets.symmetric(horizontal: 10),
                                    decoration: const BoxDecoration(
                                        color: Colors.lightGreen,
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            topLeft: Radius.circular(10))),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 2),
                                      child: Text('Rumah Sakit',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          )),
                                    )),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //ICON & STATUS--------------------------
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/hospital.png',
                                          scale: 7,
                                        ),
                                        const SizedBox(height: 10),
                                        Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 2),
                                            decoration: const BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            child: const Text(
                                              'Belum',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white),
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  //INFO & DETAIL---------------------------
                                  const Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'RS. Sejahtera Nusa Sentosa Indah',
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
                                                    Icons
                                                        .calendar_month_rounded,
                                                    size: 15,
                                                    color: Colors.grey,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    '17 Agustus 2022',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10,
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
                                                    size: 15,
                                                    color: Colors.grey,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    '10:00 AM',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(width: 5),
                                            Expanded(
                                              child: Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        // const SizedBox(height: 5),
                                        Divider(thickness: 1),
                                        Row(
                                          children: [
                                            // Icon(
                                            //   Icons.person,
                                            //   size: 18,
                                            // ),
                                            // SizedBox(width: 5),
                                            Expanded(
                                              child: Text(
                                                'Dr. Nama Hanya Contoh Saja Nama Hanya Contoh Saja',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    // color: Colors.grey,
                                                    // fontSize: 10,
                                                    ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            // SizedBox(width: 2),
                                            Expanded(
                                              child: Text(
                                                'Dokter Specialist',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 5)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    //KLINIK------------------------------------------
                    Container(
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //KATEGORI & JAM
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    // padding: const EdgeInsets.symmetric(horizontal: 10),
                                    decoration: const BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            topLeft: Radius.circular(10))),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 2),
                                      child: Text('Klinik',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          )),
                                    )),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //ICON & STATUS--------------------------
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/clinic.png',
                                          scale: 7,
                                        ),
                                        const SizedBox(height: 10),
                                        Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 2),
                                            decoration: const BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            child: const Text(
                                              'Belum',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white),
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  //INFO & DETAIL---------------------------
                                  const Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Klink Sejahtera Nusa Sentosa Indah',
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
                                                    Icons
                                                        .calendar_month_rounded,
                                                    size: 15,
                                                    color: Colors.grey,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    '17 Agustus 2022',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10,
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
                                                    size: 15,
                                                    color: Colors.grey,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    '10:00 AM',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(width: 5),
                                            Expanded(
                                              child: Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        // const SizedBox(height: 5),
                                        Divider(thickness: 1),
                                        Row(
                                          children: [
                                            // Icon(
                                            //   Icons.person,
                                            //   size: 18,
                                            // ),
                                            // SizedBox(width: 5),
                                            Expanded(
                                              child: Text(
                                                'Dr. Nama Hanya Contoh Saja Nama Hanya Contoh Saja',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    // color: Colors.grey,
                                                    // fontSize: 10,
                                                    ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            // SizedBox(width: 2),
                                            Expanded(
                                              child: Text(
                                                'Dokter Umum',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 5)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text('Jadwal Kunjungan Tambahan'),
                    ),
                    const SizedBox(height: 10),

                    //LAB------------------------------------------
                    Container(
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //KATEGORI & JAM
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    // padding: const EdgeInsets.symmetric(horizontal: 10),
                                    decoration: const BoxDecoration(
                                        color: Colors.lightBlue,
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            topLeft: Radius.circular(10))),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 2),
                                      child: Text('Lab',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          )),
                                    )),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //ICON & STATUS--------------------------
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/laboratory.png',
                                          scale: 7,
                                        ),
                                        const SizedBox(height: 10),
                                        Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 2),
                                            decoration: const BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            child: const Text(
                                              'Belum',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white),
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  //INFO & DETAIL---------------------------
                                  const Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Lab. Sejahtera Nusa Sentosa Indah',
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
                                                    Icons
                                                        .calendar_month_rounded,
                                                    size: 15,
                                                    color: Colors.grey,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    '17 Agustus 2022',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10,
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
                                                    size: 15,
                                                    color: Colors.grey,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    '10:00 AM',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(width: 5),
                                            Expanded(
                                              child: Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        // const SizedBox(height: 5),
                                        Divider(thickness: 1),
                                        Row(
                                          children: [
                                            // Icon(
                                            //   Icons.person,
                                            //   size: 18,
                                            // ),
                                            // SizedBox(width: 5),
                                            Expanded(
                                              child: Text(
                                                'Nama Hanya Contoh Saja Nama Hanya Contoh Saja',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    // color: Colors.grey,
                                                    // fontSize: 10,
                                                    ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            // SizedBox(width: 2),
                                            Expanded(
                                              child: Text(
                                                'Analyst',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 5)
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
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              onPressed: () {
                tambahKunjungan(context);
              },
              child: const Text(
                '+ Tambah',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )),
        )
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

    // var items = ['Rumah Sakit', 'Klinik', 'Apotik', 'Bidan'];

    // String dropdownValue = 'Rumah Sakit';
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        backgroundColor: Colors.white,
        context: context,
        isScrollControlled: true,
        builder: (context) => Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  color: Colors.grey),
                              height: 5,
                            )),
                        Expanded(flex: 2, child: Container()),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.0),
                      child: Text('Tambah Kunjungan Baru'),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Theme(
                      data: ThemeData(
                          textTheme: const TextTheme(
                              titleMedium: TextStyle(
                                  fontSize: 12, fontFamily: 'Poppins'))),
                      child: DropdownSearch<String>(
                        dropdownDecoratorProps: DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 20.0),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                style: BorderStyle.none,
                                width: 0,
                              ),
                            ),
                            suffixIcon: const Icon(Icons.calendar_month),
                            filled: true,
                            fillColor: Colors.grey[200],

                            hintText: 'Tujuan',
                            // labelText: 'Search Pelanngan',
                            // filled: true,
                            // fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          ),
                        ),
                        items: const [
                          'Rumah Sakit',
                          'Klinik',
                          'Apotek',
                          'Bidan',
                          'Dokter Umum',
                        ],
                        // items: List.generate(50, (i) => i),
                        popupProps: const PopupProps.modalBottomSheet(
                          showSearchBox: false, fit: FlexFit.loose,
                          // title: Text('List Pelanggan'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      style: const TextStyle(fontSize: 12),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Nama tempat',
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
                    Row(children: [
                      Expanded(
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
                          decoration: InputDecoration(
                            hintText: 'Tanggal',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 20.0),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                style: BorderStyle.none,
                                width: 0,
                              ),
                            ),
                            // suffixIcon: Icon(Icons.clear),
                            suffixIcon: const Icon(Icons.calendar_month),
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
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(fontSize: 12),
                          enableInteractiveSelection: false,
                          onTap: () async {
                            TimeOfDay? pickedTime = await showTimePicker(
                              initialTime: TimeOfDay.now(),
                              context: context,
                            );

                            if (pickedTime != null) {
                              // print(
                              //     pickedTime.format(context)); //output 10:51 PM
                              DateTime parsedTime = DateFormat.jm()
                                  // ignore: use_build_context_synchronously
                                  .parse(pickedTime.format(context).toString());
                              //converting to DateTime so that we can further format on different pattern.
                              // print(
                              //     parsedTime); //output 1970-01-01 22:53:00.000
                              String formattedTime =
                                  DateFormat('HH:mm').format(parsedTime);
                              // print(formattedTime); //output 14:59:00
                              //DateFormat() is from intl package, you can format the time on any pattern you need.

                              setState(() {
                                startTime.text =
                                    formattedTime; //set the value of text field.
                              });
                            } else {
                              // print("Time is not selected");
                            }
                          },
                          readOnly: true,
                          controller: startTime,
                          decoration: InputDecoration(
                            hintText: 'Waktu',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 20.0),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                style: BorderStyle.none,
                                width: 0,
                              ),
                            ),
                            // suffixIcon: Icon(Icons.clear),
                            suffixIcon: const Icon(Icons.access_time),
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
                    ]),
                    const SizedBox(height: 10),
                    TextFormField(
                      style: const TextStyle(fontSize: 12),
                      decoration: InputDecoration(
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                onPressed: () {},
                                child: const Text(
                                  'Tambah Kunjungan',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ));
  }
}
