import 'package:flutter/material.dart';

class UserCustomerScreen extends StatelessWidget {
  const UserCustomerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Customer Screen'),
      ),
      body: Center(
        child: const Text('This is the User Customer Screen'),
      ),
    );
  }
}
