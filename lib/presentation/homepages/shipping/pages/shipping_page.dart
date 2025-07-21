import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';

class ShippingPage extends StatefulWidget {
  const ShippingPage({super.key});

  @override
  State<ShippingPage> createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {
  // PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            'Shipping',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
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
          bottom: const TabBar(
              unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  fontSize: 12),
              labelColor: Colors.white,
              labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              tabs: [
                Tab(
                  text: 'Pengiriman',
                  // icon: Icon(Icons.check_box),
                ),
                Tab(
                  text: 'Penagihan',
                  // icon: Icon(Icons.clear_rounded),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            //PENGIRIMAN--------------------------------------------------------
            Scaffold(
              backgroundColor: Colors.lightBlue[100],
              body: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView(
                    children: [
                      const SizedBox(height: 10),
                      //RUMAH SAKIT-----------------------------------------
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                            'assets/images/send.png',
                                            scale: 7,
                                          ),
                                          const SizedBox(height: 5),
                                          Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              decoration: const BoxDecoration(
                                                  color: Colors.lightGreen,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(50))),
                                              child: const Text(
                                                'Sudah',
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                              Icon(
                                                Icons.chevron_right_sharp,
                                                size: 18,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   'Nama Hanya Contoh Saja',
                                                  //   style: TextStyle(
                                                  //       // fontWeight: FontWeight.bold,
                                                  //       ),
                                                  // ),
                                                  Text(
                                                    'Bag. Farmasi',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
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
                      //RUMAH SAKIT-----------------------------------------
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                            'assets/images/send.png',
                                            scale: 7,
                                          ),
                                          const SizedBox(height: 5),
                                          Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              decoration: const BoxDecoration(
                                                  color: Colors.lightGreen,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(50))),
                                              child: const Text(
                                                'Sudah',
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
                                            'Klinik Sejahtera Nusa Sentosa Indah',
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
                                              Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                          // const SizedBox(height: 5),
                                          Divider(thickness: 1),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_sharp,
                                                size: 18,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   'Nama Hanya Contoh Saja',
                                                  //   style: TextStyle(
                                                  //       // fontWeight: FontWeight.bold,
                                                  //       ),
                                                  // ),
                                                  Text(
                                                    'Bag. Farmasi',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
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
                      //RUMAH SAKIT-----------------------------------------
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                            'assets/images/send.png',
                                            scale: 7,
                                          ),
                                          const SizedBox(height: 5),
                                          Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              decoration: const BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                              Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                          // const SizedBox(height: 5),
                                          Divider(thickness: 1),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_sharp,
                                                size: 18,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   'Nama Hanya Contoh Saja',
                                                  //   style: TextStyle(
                                                  //       // fontWeight: FontWeight.bold,
                                                  //       ),
                                                  // ),
                                                  Text(
                                                    'Ruang Lab',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
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
                      //RUMAH SAKIT-----------------------------------------
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      // padding: const EdgeInsets.symmetric(horizontal: 10),
                                      decoration: const BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              topLeft: Radius.circular(10))),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 2),
                                        child: Text('Dokter Praktek',
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
                                            'assets/images/send.png',
                                            scale: 7,
                                          ),
                                          const SizedBox(height: 5),
                                          Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              decoration: const BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                            'Dokter Nama Hanya Contoh Saja',
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
                                              Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                          // const SizedBox(height: 5),
                                          Divider(thickness: 1),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_sharp,
                                                size: 18,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   'Nama Hanya Contoh Saja',
                                                  //   style: TextStyle(
                                                  //       // fontWeight: FontWeight.bold,
                                                  //       ),
                                                  // ),
                                                  Text(
                                                    'Ruang Dokter',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
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
                      //RUMAH SAKIT-----------------------------------------
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      // padding: const EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.pink[200],
                                          borderRadius: const BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              topLeft: Radius.circular(10))),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 2),
                                        child: Text('Bidan',
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
                                            'assets/images/send.png',
                                            scale: 7,
                                          ),
                                          const SizedBox(height: 5),
                                          Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              decoration: const BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                            'Bidan Nama Hanya Contoh Saja',
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
                                              Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                          // const SizedBox(height: 5),
                                          Divider(thickness: 1),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_sharp,
                                                size: 18,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   'Nama Hanya Contoh Saja',
                                                  //   style: TextStyle(
                                                  //       // fontWeight: FontWeight.bold,
                                                  //       ),
                                                  // ),
                                                  Text(
                                                    'Ruang Bidan',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
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
                      //RUMAH SAKIT-----------------------------------------
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      // padding: const EdgeInsets.symmetric(horizontal: 10),
                                      decoration: const BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              topLeft: Radius.circular(10))),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 2),
                                        child: Text('Apotek',
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
                                            'assets/images/send.png',
                                            scale: 7,
                                          ),
                                          const SizedBox(height: 5),
                                          Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              decoration: const BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                            'Apotek Sejahtera Nusa Sentosa Indah',
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
                                              Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                          // const SizedBox(height: 5),
                                          Divider(thickness: 1),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_sharp,
                                                size: 18,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   'Nama Hanya Contoh Saja',
                                                  //   style: TextStyle(
                                                  //       // fontWeight: FontWeight.bold,
                                                  //       ),
                                                  // ),
                                                  Text(
                                                    'Bag. Apoteker',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
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
                      const SizedBox(height: 20)
                      // TextFormField(
                      //   decoration: const InputDecoration(
                      //     hintText: 'nama Barang',
                      //     contentPadding:
                      //         EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.all(Radius.circular(10)),
                      //       borderSide: BorderSide(
                      //         // style: BorderStyle.none,
                      //         width: 2,
                      //       ),
                      //     ),
                      //     suffixIcon: Icon(Icons.search),
                      //     filled: true,
                      //     fillColor: Colors.white,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              // floatingActionButton: SizedBox(
              //   height: 40,
              //   child: ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //           elevation: 1,
              //           shape: const RoundedRectangleBorder(
              //               borderRadius:
              //                   BorderRadius.all(Radius.circular(10)))),
              //       onPressed: () {
              //         _tambahProduk(context);
              //       },
              //       child: const Text(
              //         '+ Tambah',
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold, color: Colors.white),
              //       )),
              // ),
            ),
            //PENAGIHAN---------------------------------------------------------
            Scaffold(
              backgroundColor: Colors.lightBlue[100],
              body: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView(
                    children: [
                      const SizedBox(height: 10),
                      //RUMAH SAKIT-----------------------------------------
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                            'assets/images/bill.png',
                                            scale: 8,
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              decoration: const BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                              Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                          // const SizedBox(height: 5),
                                          Divider(thickness: 1),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_sharp,
                                                size: 18,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   'Nama Hanya Contoh Saja',
                                                  //   style: TextStyle(
                                                  //       // fontWeight: FontWeight.bold,
                                                  //       ),
                                                  // ),
                                                  Text(
                                                    'Bag. Farmasi',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
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
                      //RUMAH SAKIT-----------------------------------------
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                            'assets/images/bill.png',
                                            scale: 8,
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              decoration: const BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                            'Klinik Sejahtera Nusa Sentosa Indah',
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
                                              Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                          // const SizedBox(height: 5),
                                          Divider(thickness: 1),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_sharp,
                                                size: 18,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   'Nama Hanya Contoh Saja',
                                                  //   style: TextStyle(
                                                  //       // fontWeight: FontWeight.bold,
                                                  //       ),
                                                  // ),
                                                  Text(
                                                    'Bag. Farmasi',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
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
                      //RUMAH SAKIT-----------------------------------------
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                            'assets/images/bill.png',
                                            scale: 8,
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              decoration: const BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                              Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                          // const SizedBox(height: 5),
                                          Divider(thickness: 1),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_sharp,
                                                size: 18,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   'Nama Hanya Contoh Saja',
                                                  //   style: TextStyle(
                                                  //       // fontWeight: FontWeight.bold,
                                                  //       ),
                                                  // ),
                                                  Text(
                                                    'Ruang Lab',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
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
                      //RUMAH SAKIT-----------------------------------------
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      // padding: const EdgeInsets.symmetric(horizontal: 10),
                                      decoration: const BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              topLeft: Radius.circular(10))),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 2),
                                        child: Text('Dokter Praktek',
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
                                            'assets/images/bill.png',
                                            scale: 8,
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              decoration: const BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                            'Dokter Nama Hanya Contoh Saja',
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
                                              Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                          // const SizedBox(height: 5),
                                          Divider(thickness: 1),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_sharp,
                                                size: 18,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   'Nama Hanya Contoh Saja',
                                                  //   style: TextStyle(
                                                  //       // fontWeight: FontWeight.bold,
                                                  //       ),
                                                  // ),
                                                  Text(
                                                    'Ruang Dokter',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
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
                      //RUMAH SAKIT-----------------------------------------
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      // padding: const EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.pink[200],
                                          borderRadius: const BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              topLeft: Radius.circular(10))),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 2),
                                        child: Text('Bidan',
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
                                            'assets/images/bill.png',
                                            scale: 8,
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              decoration: const BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                            'Bidan Nama Hanya Contoh Saja',
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
                                              Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                          // const SizedBox(height: 5),
                                          Divider(thickness: 1),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_sharp,
                                                size: 18,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   'Nama Hanya Contoh Saja',
                                                  //   style: TextStyle(
                                                  //       // fontWeight: FontWeight.bold,
                                                  //       ),
                                                  // ),
                                                  Text(
                                                    'Ruang Bidan',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
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
                      //RUMAH SAKIT-----------------------------------------
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      // padding: const EdgeInsets.symmetric(horizontal: 10),
                                      decoration: const BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              topLeft: Radius.circular(10))),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 2),
                                        child: Text('Apotek',
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
                                            'assets/images/bill.png',
                                            scale: 8,
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              decoration: const BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                            'Apotek Sejahtera Nusa Sentosa Indah',
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
                                              Text(
                                                'Jl. Pahlawan No. 10, Jakarta',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                          // const SizedBox(height: 5),
                                          Divider(thickness: 1),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.chevron_right_sharp,
                                                size: 18,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   'Nama Hanya Contoh Saja',
                                                  //   style: TextStyle(
                                                  //       // fontWeight: FontWeight.bold,
                                                  //       ),
                                                  // ),
                                                  Text(
                                                    'Bag. Apoteker',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
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
                      const SizedBox(height: 20)
                      // TextFormField(
                      //   decoration: const InputDecoration(
                      //     hintText: 'nama Barang',
                      //     contentPadding:
                      //         EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.all(Radius.circular(10)),
                      //       borderSide: BorderSide(
                      //         // style: BorderStyle.none,
                      //         width: 2,
                      //       ),
                      //     ),
                      //     suffixIcon: Icon(Icons.search),
                      //     filled: true,
                      //     fillColor: Colors.white,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              // floatingActionButton: SizedBox(
              //   height: 40,
              //   child: ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //           elevation: 1,
              //           shape: const RoundedRectangleBorder(
              //               borderRadius:
              //                   BorderRadius.all(Radius.circular(10)))),
              //       onPressed: () {
              //         _tambahProduk(context);
              //       },
              //       child: const Text(
              //         '+ Tambah',
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold, color: Colors.white),
              //       )),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}

void _tambahProduk(BuildContext context) {
  TextEditingController startDate = TextEditingController(text: '');
  TextEditingController startTime = TextEditingController(text: '');

  Widget bottomSheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                        backgroundColor: Colors.transparent, elevation: 0),
                    child: const Row(
                      children: [
                        Icon(Icons.camera),
                        SizedBox(width: 10),
                        Text('Camera'),
                      ],
                    )),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, elevation: 0),
                    child: const Row(
                      children: [
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
    );
  }

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
                    child: Text('Tambah Produk Baru'),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Nama Barang',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          // style: BorderStyle.none,
                          width: 2,
                        ),
                      ),
                      // suffixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Ref. Harga',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          // style: BorderStyle.none,
                          width: 2,
                        ),
                      ),
                      // suffixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  DottedBorder(
                    // borderType: BorderType.RRect,
                    // color: Colors.black, //color of dotted/dash line
                    // strokeWidth: 1, //thickness of dash/dots
                    // dashPattern: const [10, 6],
                    // radius: const Radius.circular(10),
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
                          showModalBottomSheet(
                              context: context,
                              builder: ((builder) => bottomSheet()));
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.image,
                              size: 50,
                            ),
                            SizedBox(height: 10),
                            Text('Tap Untuk Upload Gambar'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 200,
                  //   decoration: BoxDecoration(
                  //       border: Border.all(color: Colors.black54),
                  //       borderRadius:
                  //           const BorderRadius.all(Radius.circular(10))),

                  //   // decoration: BoxDecoration(
                  //   //     image: _imageFile == null
                  //   //         ? const AssetImage("")
                  //   //         : FileImage(File(_imageFile.path))),
                  // ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.lightBlueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 0),
                              child: const Text(
                                'Simpan',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ));
}

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Product 1",
    "Product 2",
    "Product 3",
    "Product 4",
    "Product 5",
    "Product 6",
    "Product 7",
    "Product 8",
    "Product 9",
    "Product 10",
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
