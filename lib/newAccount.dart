// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:ecg/constantSize.dart';
import 'package:ecg/otp.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#08089E"),
        title: const Text("Create Account"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome to E.C.G ',
                  style: TextStyle(
                    color: HexColor("#08089E"),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                constSize(),
                Text(
                  'Please provide accurate information to ensure  \n a successful registation ',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 15,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter fullname',
                    label: Text(
                      'Fullname',
                      style: TextStyle(
                        color: HexColor("#08089E"),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: HexColor("#08089E"),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.shade300,
                    )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.shade300,
                    )),
                  ),
                ),
                constSize(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter email',
                    label: Text(
                      'Email',
                      style: TextStyle(
                        color: HexColor("#08089E"),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: HexColor("#08089E"),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.shade300,
                    )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.shade300,
                    )),
                  ),
                ),
                constSize(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter password',
                    label: Text(
                      'Password',
                      style: TextStyle(
                        color: HexColor("#08089E"),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: HexColor("#08089E"),
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: HexColor("#08089E"),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.shade300,
                    )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.shade300,
                    )),
                  ),
                  obscureText: true,
                ),
                constSize(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Re-type password',
                    label: Text(
                      'Re-type password',
                      style: TextStyle(
                        color: HexColor("#08089E"),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: HexColor("#08089E"),
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: HexColor("#08089E"),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.shade300,
                    )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.shade300,
                    )),
                  ),
                  obscureText: true,
                ),
                constSize(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter meter number',
                    label: Text(
                      'Meter Number',
                      style: TextStyle(
                        color: HexColor("#08089E"),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.numbers,
                      color: HexColor("#08089E"),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.shade300,
                    )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.shade300,
                    )),
                  ),
                ),
                constSize(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter mobile number',
                    label: Text(
                      'Contact',
                      style: TextStyle(
                        color: HexColor("#08089E"),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: HexColor("#08089E"),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.shade300,
                    )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.shade300,
                    )),
                  ),
                  keyboardType: TextInputType.number,
                ),
                constSize(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Otp()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor("#F4B807"),
                      fixedSize: Size(MediaQuery.of(context).size.width, 50.0)),
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
