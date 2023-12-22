import 'package:flutter/material.dart';

class UserAdminScreen extends StatelessWidget {
  const UserAdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Admin Screen'),
      ),
      body: Center(
        child: const Text('This is the User Admin Screen'),
      ),
    );
  }
}
