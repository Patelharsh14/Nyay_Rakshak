// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: nameController,
            ),
            const SizedBox(height: 16),
            const Text(
              'Phone Number',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: phoneController,
            ),
            const SizedBox(height: 16),
            const Text(
              'Email',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: emailController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save the updated data to your backend or storage
                String updatedName = nameController.text;
                String updatedPhone = phoneController.text;
                String updatedEmail = emailController.text;

                // Implement the logic to save the updated data here

                // Show a confirmation to the user
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Profile updated')),
                );
              },
              child: const Text('Save'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement the log out logic here
                // This can include signing the user out, clearing their data, and navigating to the login screen.
              },
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
