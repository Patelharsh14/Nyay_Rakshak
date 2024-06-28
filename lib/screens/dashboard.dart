
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:nyay_1/screens/homepage.dart';
import 'package:nyay_1/Profiles/profile.dart';

import '../Queries/chat.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {
  Widget navWig = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueAccent,
        child: navWig,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 242, 133, 16),
        
        items: const [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined),
            label: 'Home',
        
          ),
        
          CurvedNavigationBarItem(
            child: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
        ],
        onTap: (index) {
          setState(() {
            if (index == 0) {
              navWig = const HomePage();
            } else if (index == 1) {
              navWig = const ProfileScreen(); // Navigate to the Profile page
            } else if (index == 2) {
              navWig = ChatScreen(); // Navigate to the Chat page
            }
          });
        },
      ),
    );
  }
}



Widget h1({required bool includeHomeText}) {
  return const Text("HOME", style: TextStyle(fontSize: 00));
}

Widget s1() {
  return const Text("Profile", style: TextStyle(fontSize: 20));
}

Widget c1() {
  return const Text("Query", style: TextStyle(fontSize: 20));
}
