import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';

class Produk extends StatefulWidget {
  const Produk({super.key});

  @override
  State<Produk> createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  // PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  TextEditingController textController = TextEditingController();
  final _contohproduk = Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          const SizedBox(width: 20),
          const Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama Produk',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 2,
                ),
                Text('Rp. 0, 00'),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: Text(
                        '0',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Item',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
            'Produk',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
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
                  text: 'Persediaan',
                  // icon: Icon(Icons.check_box),
                ),
                Tab(
                  text: 'Kosong',
                  // icon: Icon(Icons.clear_rounded),
                ),
                Tab(
                  text: 'Baru',
                  // icon: Icon(Icons.add_box),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nama',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
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
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nama',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
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
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: _contohproduk,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Scaffold(
                backgroundColor: Colors.lightBlue[100],
                body: Center(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nama',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.short_text),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text('Belum ada')
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
                floatingActionButton: SizedBox(
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 1,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      onPressed: () {
                        _tambahProduk(context);
                      },
                      child: const Text(
                        '+ Tambah',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                )),
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
                    borderType: BorderType.RRect,
                    color: Colors.black, //color of dotted/dash line
                    // strokeWidth: 0, //thickness of dash/dots
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
