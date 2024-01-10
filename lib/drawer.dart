import 'package:flutter/material.dart';
import 'package:mobile_wg/login.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // const SizedBox(height: 40),
            // ListTile(
            //   onTap: () {
            //     // Navigator.push(context,
            //     //     MaterialPageRoute(builder: (context) => const ()));
            //   },
            //   // trailing: const Icon(Icons.settings),
            //   leading: const Icon(Icons.settings),
            //   title: const Text(
            //     'Setting',
            //     style: TextStyle(
            //       color: Colors.grey,
            //       fontSize: 16,
            //     ),
            //   ),
            // ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    decoration:
                        const BoxDecoration(color: Colors.lightBlueAccent),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  // flex
                  child: Container(
                    color: Colors.lightBlueAccent,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: ListTile(
                        leading: Icon(
                          Icons.account_circle_rounded,
                          color: Colors.white,
                          size: 60,
                        ),
                        title: Text(
                          'Nama User',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        subtitle: Text(
                          'Title User',
                          style: TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            ListTile(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const ()));
              },
              // trailing: const Icon(Icons.help),
              leading: const Icon(Icons.person),
              title: const Text(
                'User Profile',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const ()));
              },
              // trailing: const Icon(Icons.help),
              leading: const Icon(Icons.help),
              title: const Text(
                'Contact Us',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginPage(
                              title: '',
                            )));
              },
              leading: const Icon(Icons.logout),
              // trailing: const Icon(Icons.logout),
              title: const Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
