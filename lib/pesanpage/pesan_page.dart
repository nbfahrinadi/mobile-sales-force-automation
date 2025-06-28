import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:mobile_wg/drawer.dart';
// import 'package:video_player/video_player.dart';

class PesanPage extends StatefulWidget {
  const PesanPage({super.key});

  @override
  State<PesanPage> createState() => _PesanPageState();
}

class _PesanPageState extends State<PesanPage> {
  // PickedFile _imageFile;
  // final ImagePicker _picker = ImagePicker();

  // TextEditingController textController = TextEditingController();
  final _pesanDummy = Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        )),
    child: MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      elevation: 0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      onPressed: () {},
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //KATEGORI & JAM

          const SizedBox(height: 5),
          Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 0, left: 5, right: 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //ICON & STATUS--------------------------
                const Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.account_circle_rounded,
                    size: 60,
                    color: Colors.grey,
                  ),
                ),
                // const SizedBox(width: 0),
                //INFO & DETAIL---------------------------
                Expanded(
                  flex: 3,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //NAMA & JAM----------------------------------------------
                      Row(
                        children: [
                          const Expanded(
                            flex: 3,
                            child: Text(
                              'Nama Hanya Contoh Saja Siapa Tau Panjang Namanya',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(

                                  // fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(width: 40),
                          Expanded(
                            flex: 1,
                            child: Container(
                                // padding: const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue[100],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2),
                                  child: Text('10:00 AM',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.blue,
                                      )),
                                )),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      //PESAN & JMLH NOTIF-------------------------------------
                      const Row(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                  maxLines: 2,
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.looks_one_rounded,
                                  // size: 15,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),

                      // const SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5)
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Pesan',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // method to show the search bar
                showSearch(
                    context: context,
                    // delegate to customize the search bar
                    delegate: CustomSearchDelegate());
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
        ),
        drawer: const SizedBox(
            // width: MediaQuery.of(context).size.width / 2,
            width: 250,
            child: DrawerList()),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nama',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.short_text),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.lightBlue[100],
                child: ListView(
                  children: [
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: _pesanDummy,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: _pesanDummy,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: _pesanDummy,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: _pesanDummy,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: _pesanDummy,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: _pesanDummy,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: _pesanDummy,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: _pesanDummy,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: _pesanDummy,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: _pesanDummy,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
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
                    style: const TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      hintText: 'Nama Barang',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 20.0),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0,
                        ),
                      ),
                      // suffixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    style: const TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      hintText: 'Ref. Harga',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 20.0),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0,
                        ),
                      ),
                      // suffixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  const SizedBox(height: 10),
                  DottedBorder(
                    // borderType: BorderType.RRect,
                    // color: Colors.black, //color of dotted/dash line
                    // // strokeWidth: 0, //thickness of dash/dots
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
    "Pesan 1",
    "Pesan 2",
    "Pesan 3",
    "Pesan 4",
    "Pesan 5",
    "Pesan 6",
    "Pesan 7",
    "Pesan 8",
    "Pesan 9",
    "Pesan 10",
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
