import 'package:flutter/material.dart';

class UserAdminScreen extends StatelessWidget {
  const UserAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Admin Screen'),
      ),
      body: const Center(
        child: Text('This is the User Admin Screen'),
      ),
    );
  }
}
