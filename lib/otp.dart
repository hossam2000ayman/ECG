import 'package:ecg/constantSize.dart';
import 'package:ecg/home.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                    color: HexColor("#08089E"),
                  ),
                  child: const Center(
                    child: Text(
                      "Enter the OTP sent to  your number",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Pinput(
                    length: 4,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend Code',
                        style: TextStyle(
                          color: HexColor("#08089E"),
                        ),
                      )),
                ),
                constSize(),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: HexColor("#F4B807"),
                        fixedSize:
                            Size(MediaQuery.of(context).size.width, 50.0)),
                    child: const Text(
                      'Verify',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: height * .8 - (width),
              left: width * .4,
              child: Image.asset(
                'assets/images/ecg.png',
                width: 70,
                height: 70,
              )),
        ],
      ),
    );
  }
}
