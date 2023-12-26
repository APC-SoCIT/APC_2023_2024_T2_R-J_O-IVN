import 'package:flutter/material.dart';

class UserCustomerScreen extends StatelessWidget {
  const UserCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Customer Screen'),
      ),
      body: const Center(
        child: Text('This is the User Customer Screen'),
      ),
    );
  }
}
