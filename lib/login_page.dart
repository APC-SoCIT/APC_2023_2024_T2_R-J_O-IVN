import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

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
  var logger = Logger();


  Future<void> login() async {
    try {
      var url = Uri.parse("https://192.168.1.5/localconnect/login.php");
      var response = await http.post(url, body: {
        "username": _usernameController.text,
        "password": _passwordController.text,
      });

      if (response.statusCode == 200) {
        // Successful response
        logger.i('Login successful. Response: ${response.body}');
      } else {
        // Handle non-200 status codes
        logger.e('Login failed. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // Handle exceptions
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
                    print('Forgot Password pressed');
                  },
                  child: const Text('Forgot Password?'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement login functionality
                String username = _usernameController.text;
                String password = _passwordController.text;
                print('Username/Email: $username, Password: $password');
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}