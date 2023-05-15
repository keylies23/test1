import 'package:flutter/material.dart';
import 'package:test1/components/my_button.dart';
import 'package:test1/components/textfield.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'praktik login',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 228, 228, 228),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                // logo
                const Icon(
                  Icons.lock,
                  color: Colors.amber,
                  size: 80,
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Hello.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Welcome Back, We\'ve missed you!',
                  style: TextStyle(color: Colors.black45, fontSize: 16),
                ), // text selamat datang
                const SizedBox(
                  height: 20,
                ),
                MyTexfield(
                  hntname: 'Username',
                  obscuredtext: false,
                  controller: usernameController,
                ),
                MyTexfield(
                  hntname: 'Passwordd',
                  obscuredtext: true,
                  controller: passwordController,
                ),
                // textfield user
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        'Lupa Password',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                MyButton(
                  btnName: 'Sign In',
                ),
                //text lupa password

                //tombol sign in

                //watermark
              ],
            ),
          ),
        ),
      ),
    );
  }
}
