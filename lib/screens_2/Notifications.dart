// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notifications"),),
    );
  }
}