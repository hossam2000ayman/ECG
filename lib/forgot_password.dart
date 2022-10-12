import 'package:ecg/constantSize.dart';
import 'package:ecg/home.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        backgroundColor: HexColor("#08089E"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/forgot_password.jpg',
                  width: 500,
                  height: 300,
                ),
                constSize(),
                Text(
                  'Forgot Password ? ',
                  style: TextStyle(
                    color: HexColor("#08089E"),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                constSize(),
                Text(
                  'Please provide your email address .',
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
                    hintText: 'Enter your email address',
                    label: Text(
                      'Email',
                      style: TextStyle(
                        color: HexColor("#08089E"),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor("#F4B807"),
                      fixedSize: Size(MediaQuery.of(context).size.width, 50.0)),
                  child: const Text(
                    'Confrim Email',
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
