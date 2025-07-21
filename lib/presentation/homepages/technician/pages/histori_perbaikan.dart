import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoriPerbaikan extends StatefulWidget {
  const HistoriPerbaikan({super.key});

  @override
  State<HistoriPerbaikan> createState() => _HistoriPerbaikanState();
}

class _HistoriPerbaikanState extends State<HistoriPerbaikan> {
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
          'Histori Perbaikan',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: ElevatedButton(
        //         style: ElevatedButton.styleFrom(
        //           elevation: 0,
        //           backgroundColor: Colors.white,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(10.0),
        //           ),
        //         ),
        //         onPressed: (() {}),
        //         child: const Text(
        //           'Histori',
        //           style: TextStyle(
        //               color: Colors.lightBlueAccent,
        //               fontWeight: FontWeight.bold),
        //         )),
        //   )
        //   // IconButton(icon: const Icon(Icons.history), onPressed: () {}),
        // ],
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
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                    child: MaterialButton(
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      onPressed: () {
                        // _showDialog(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Image.asset(
                                    'assets/images/wienerlabcm200.png',
                                    scale: 1,
                                  ),
                                ),
                              )),
                          const SizedBox(width: 10),
                          const Expanded(
                            flex: 4,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Wienerlab CM-200',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  // const Text(
                                  //   'Dr. contoh',
                                  //   style: TextStyle(fontWeight: FontWeight.bold),
                                  // )
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_month_rounded,
                                        size: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Senin, 17 Agustus 2022',
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
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
      // floatingActionButton: SizedBox(
      //   height: 40,
      //   child: ElevatedButton(
      //       style: ElevatedButton.styleFrom(
      //           elevation: 1,
      //           shape: const RoundedRectangleBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(50)))),
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

  void tambahKunjungan(BuildContext context) {
    TextEditingController startDate = TextEditingController(text: '');
    TextEditingController startTime = TextEditingController(text: '');

    var items = ['Rumah Sakit', 'Klinik', 'Apotik', 'Bidan'];

    String dropdownValue = 'Rumah Sakit';
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
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text('Tambah Kunjungan Baru'),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.black54)),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              value: dropdownValue,
                              icon: const Icon(Icons.arrow_drop_down_rounded),
                              elevation: 3,
                              style: const TextStyle(color: Colors.black),
                              underline: Container(
                                color: Colors.transparent,
                              ),

                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(
                                    items,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Nama tempat',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
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
                    Row(children: [
                      Expanded(
                        child: TextFormField(
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
                                vertical: 5.0, horizontal: 10.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
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
                          decoration: const InputDecoration(
                            hintText: 'Waktu',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 10.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                // style: BorderStyle.none,
                                width: 3,
                              ),
                            ),
                            // suffixIcon: Icon(Icons.clear),
                            suffixIcon: Icon(Icons.access_time),
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
                    ]),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Nama yang dituju',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
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
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      title: const Text("Selesai Pemeliharaan?"),
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
            onPressed: (() {}),
            child: const Text(
              'Batal',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onPressed: (() {}),
            child: const Text(
              'Selesai',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),

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
