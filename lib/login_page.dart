import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:ruth_and_jerry/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final logger = Logger();


  Future<void> login(BuildContext context) async {
    try {
      var url = Uri.parse("https://127.0.0.1/localconnect/login.php");
      var response = await http.post(url, body: {
        "username": _usernameController.text,
        "password": _passwordController.text,
      });
      var data = json.decode(response.body);
      if (data != "success") {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WelcomeScreen()),
        );
      }
      if (response.statusCode == 200) {
        // Successful response
        logger.i('Login successful. Response: ${response.body}');
      } else {
        // Handle non-200 status codes
        Fluttertoast.showToast(
            msg: "This is Center Short Toast",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
        logger.e('Login failed. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // Handle exceptions
      Fluttertoast.showToast(
        msg: "Error during login: $e",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      logger.e('Error during login: $e');
    }
  }


  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username/Email', prefixIcon: Icon(
                  Icons.person
                )
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password',
              prefixIcon: Icon(Icons.security)),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // TODO: Implement Forgot Password functionality

                  },
                  child: const Text('Forgot Password?'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement login functionality
                //String username = _usernameController.text;
                //String password = _passwordController.text;
                login(context);

              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}