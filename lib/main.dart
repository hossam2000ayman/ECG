import 'package:ecg/constantSize.dart';
import 'package:ecg/forgot_password.dart';
import 'package:ecg/home.dart';
import 'package:ecg/newAccount.dart';
import 'package:ecg/textDeco.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/ecg_login.jpg",
                ),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/ecg.png'),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Welcome to ECG ',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter email',
                    label: Text(
                      'Email',
                      style: textStyleDeco(),
                    ),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    focusedBorder: textDecoration(),
                    enabledBorder: enabledTextDeco(),
                  ),
                  style: textStyleDeco(),
                  keyboardType: TextInputType.emailAddress,
                ),
                constSize(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter password',
                    label: Text(
                      'Password',
                      style: textStyleDeco(),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ),
                    focusedBorder: textDecoration(),
                    enabledBorder: enabledTextDeco(),
                  ),
                  style: textStyleDeco(),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      child: Text(
                        'Forgot Password',
                        style: textStyleDeco(),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()));
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor("#F4B807"),
                      fixedSize: Size(MediaQuery.of(context).size.width, 50.0)),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  child: const Text(
                    'Create an account',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateAccount()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
