import 'package:flutter/material.dart';
import 'package:mobile_wg/drawer.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // _counter++;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bghome.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
            'Setting',
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
              const Icon(
                Icons.account_circle_rounded,
                size: 150,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 10, left: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.10),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: const Offset(
                                    0, 0), // changes position of shadow
                              ),
                            ],
                            // color: const Color(0xff40c4ff),
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50))
                            // borderRadius: const BorderRadius.only(
                            //   bottomLeft: Radius.circular(20),
                            //   bottomRight: Radius.circular(20),
                            ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  // const Icon(
                                  //   Icons.account_circle_rounded,
                                  //   size: 100,
                                  //   color: Colors.grey,
                                  // ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Nama User',
                                        style: TextStyle(
                                            // color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Title user',
                                        // style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),

                                  // const SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: ListView(
                  children: [
                    const SizedBox(height: 10),
                    Container(
                      // height: 20,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text('Pengaturan'),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: Divider(thickness: 1),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: MaterialButton(
                                  child: Row(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Icon(Icons.person),
                                      ),
                                      SizedBox(width: 10),
                                      Text('Profile'),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: MaterialButton(
                                  child: Row(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Icon(
                                            Icons.notifications_active_sharp),
                                      ),
                                      SizedBox(width: 10),
                                      Text('Notifikasi'),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: MaterialButton(
                                  child: Row(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Icon(Icons.language),
                                      ),
                                      SizedBox(width: 10),
                                      Text('Bahasa'),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
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
      ),
    );
  }
}
