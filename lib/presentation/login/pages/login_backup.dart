// import 'package:flutter/material.dart';
// import 'package:mobile_sales_force_automation/presentation/screen_controller.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key, required String title});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController _passwordController = TextEditingController();

//   bool _showPassword = false;
//   void _togglevisibility() {
//     setState(() {
//       _showPassword = !_showPassword;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [Colors.lightBlueAccent, Color.fromARGB(255, 146, 221, 255)],
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         // resizeToAvoidBottomInset: false,
//         body: SafeArea(
//           child: Center(
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                   children: [
//                     Image.asset('assets/images/logoonly.png', scale: 6),
//                     const SizedBox(height: 10),
//                     const Text(
//                       'SALES FORCE',
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                         // fontFamily: 'Questrial',
//                         // color: Colors.blue[900],
//                         color: Colors.white,
//                       ),
//                     ),
//                     const Text(
//                       'Automation',
//                       style: TextStyle(
//                         fontSize: 20,
//                         // fontWeight: FontWeight.bold,
//                         fontFamily: 'Poppins',
//                         color: Colors.white,
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     Container(
//                       decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.10),
//                             spreadRadius: 5,
//                             blurRadius: 10,
//                             offset: const Offset(
//                               0,
//                               0,
//                             ), // changes position of shadow
//                           ),
//                         ],
//                         borderRadius: const BorderRadius.all(
//                           Radius.circular(20),
//                         ),
//                         color: Colors.white,
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 20,
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Row(
//                               children: [
//                                 Expanded(
//                                   child: Text(
//                                     'Welcome',
//                                     style: TextStyle(
//                                       fontSize: 30,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                     textAlign: TextAlign.center,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 10),
//                             const Row(
//                               children: [
//                                 Expanded(
//                                   child: Text(
//                                     'Selamat datang, silahkan login',
//                                     style: TextStyle(),
//                                     textAlign: TextAlign.center,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 30),
//                             Row(
//                               children: [
//                                 Expanded(
//                                   child: TextFormField(
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(
//                                           15.0,
//                                         ),
//                                         borderSide: BorderSide.none,
//                                       ),
//                                       focusedBorder: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(15),
//                                         borderSide: const BorderSide(
//                                           width: 2,
//                                           color: Colors.grey,
//                                         ),
//                                       ),
//                                       hintText: "Email",
//                                       filled: true,
//                                       fillColor: Colors.grey[200],
//                                       focusColor: Colors.grey,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 10),
//                             Row(
//                               children: [
//                                 Expanded(
//                                   child: TextFormField(
//                                     controller: _passwordController,
//                                     obscureText: !_showPassword,
//                                     // cursorColor: Colors.red,
//                                     // style: const TextStyle(color: Colors.white),
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(
//                                           15.0,
//                                         ),
//                                         borderSide: BorderSide.none,
//                                       ),
//                                       focusedBorder: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(15),
//                                         borderSide: const BorderSide(
//                                           width: 2,
//                                           color: Colors.grey,
//                                         ),
//                                       ),
//                                       hintText: "Password",
//                                       filled: true,
//                                       fillColor: Colors.grey[200],
//                                       suffixIcon: GestureDetector(
//                                         onTap: () {
//                                           _togglevisibility();
//                                         },
//                                         child: Icon(
//                                           _showPassword
//                                               ? Icons.visibility
//                                               : Icons.visibility_off,
//                                           // color: Colors.red,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 10),
//                             Row(
//                               children: [
//                                 Expanded(
//                                   child: SizedBox(
//                                     height: 50,
//                                     child: ElevatedButton(
//                                       style: ElevatedButton.styleFrom(
//                                         backgroundColor: Colors.lightBlueAccent,
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius: BorderRadius.circular(
//                                             15.0,
//                                           ),
//                                         ),
//                                       ),
//                                       onPressed: () {
//                                         Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                             builder: (context) =>
//                                                 const ScreenController(),
//                                           ),
//                                         );
//                                       },
//                                       child: const Text(
//                                         'Login',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 15,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//         bottomNavigationBar: const BottomAppBar(
//           color: Colors.transparent,
//           elevation: 0,
//           child: Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text(
//               'Powered by Adamlabs',
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.black54),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
