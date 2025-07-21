import 'package:flutter/material.dart';
import 'package:mobile_sales_force_automation/presentation/drawer.dart';
import 'package:mobile_sales_force_automation/presentation/homepages/reporting/pages/reporting_page.dart';
import 'package:mobile_sales_force_automation/presentation/homepages/sales/pages/sales_page.dart';
import 'package:mobile_sales_force_automation/presentation/homepages/shipping/pages/shipping_page.dart';
import 'package:mobile_sales_force_automation/presentation/homepages/technician/pages/technician_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          image: AssetImage('assets/vectors/bghome.png'),
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
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white, size: 24),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                ),
              );
            },
          ),
          title: const Text(
            'Sales Force Automation',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),

          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.10),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  // child: Image.asset('assets/images/logoonly.png', scale: 30),
                ),
              ),
            ),
          ],
          // centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          // leading: IconButton(
          //   icon: const Icon(Icons.dashboard_rounded),
          //   onPressed: () => Scaffold.of(context).openDrawer(),
          // ),
        ),

        drawer: const SizedBox(
          // width: MediaQuery.of(context).size.width / 2,
          width: 250,
          child: DrawerList(),
        ),
        body: Center(
          child: Column(
            children: [
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 20,
                    top: 20,
                    bottom: 20,
                    left: 10,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.date_range_rounded, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Senin, 17 Agustus 2022',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
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
                                0,
                                0,
                              ), // changes position of shadow
                            ),
                          ],
                          // color: const Color(0xff40c4ff),
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: ListTile(
                          title: const Text(
                            'Nama User',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              // color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            'Title User',
                            style: TextStyle(
                              color: Colors.grey[600],
                              // color: Colors.white
                            ),
                          ),
                          leading: Icon(
                            Icons.account_circle_sharp,
                            size: 50,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                        ),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.10),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: const Offset(
                                0,
                                0,
                              ), // changes position of shadow
                            ),
                          ],
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: Colors.white,
                          // color: Colors.orange[300],
                          elevation: 0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/vectors/sales.png',
                                  scale: 6,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Sales',
                                  style: TextStyle(
                                    // color: Colors.orange[800],
                                    // fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SalesPage(),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.10),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: const Offset(
                                0,
                                0,
                              ), // changes position of shadow
                            ),
                          ],
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: Colors.white,
                          // color: Colors.red[300],
                          elevation: 0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TechnicianPage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/vectors/technician.png',
                                  scale: 6,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Technician',
                                  style: TextStyle(
                                    // color: Colors.red[800],
                                    // fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.10),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: const Offset(
                                0,
                                0,
                              ), // changes position of shadow
                            ),
                          ],
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          // color: Colors.white38,
                          color: Colors.white,
                          // color: Colors.yellow[300],
                          elevation: 0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ReportingPage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/vectors/report.png',
                                  scale: 6,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Reporting',
                                  style: TextStyle(
                                    // color: Colors.yellow[800],
                                    // fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.10),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: const Offset(
                                0,
                                0,
                              ), // changes position of shadow
                            ),
                          ],
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: Colors.white,
                          // color: Colors.green[300],
                          elevation: 0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ShippingPage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/vectors/shipping.png',
                                  scale: 6,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Shipping',
                                  style: TextStyle(
                                    // color: Colors.green[800],
                                    // fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset('assets/vectors/bottomimage.png', scale: 2.5),
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
