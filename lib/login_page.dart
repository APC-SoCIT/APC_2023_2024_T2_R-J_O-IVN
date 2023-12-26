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
    if (_usernameController.text == "" || _passwordController.text == "") {
      Fluttertoast.showToast(
        msg: "All fields are blank! ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } else {
      try {
        var url = Uri.parse("http://127.0.0.1/localconnect/login.php");
        var response = await http.post(url, body: {
          "username": _usernameController.text,
          "password": _passwordController.text,
        });

        // Check if the response is successful (status code 200)
        if (response.statusCode == 200) {
          try {
            // Attempt to decode the JSON response
            var data = json.decode(response.body);

            // Check if the response is "success"
            if (data == "success") {
              // Navigate to the WelcomeScreen on successful login
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WelcomeScreen()),
              );
              logger.i('Login successful. Response: ${response.body}');
            } else {
              // Handle non-"success" response
              Fluttertoast.showToast(
                msg: "Login failed: $data",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0,
              );
              logger.e('Login failed. Response: $data');
            }
          } catch (e) {
            // Handle JSON decoding error
            Fluttertoast.showToast(
              msg: "Error decoding JSON: $e",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0,
            );
            logger.e('Error decoding JSON: $e');
          }
        } else {
          // Handle non-200 status codes
          Fluttertoast.showToast(
            msg: "Login failed. Status code: ${response.statusCode}",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
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