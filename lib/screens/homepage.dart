import 'package:flutter/material.dart';
import 'package:nyay_1/screens_2/Adminpage.dart';
import 'package:nyay_1/screens_2/Emergencypage.dart';
import 'package:nyay_1/screens_2/FaqPage.dart';
import 'package:nyay_1/screens_2/Feedbackpage.dart';
import 'package:nyay_1/screens_2/Newspage.dart';
import 'package:nyay_1/screens_2/Notifications.dart';
import 'package:nyay_1/screens_2/Supportpage.dart';
import 'package:nyay_1/screens_2/legalpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nyay Rakshak"),
        centerTitle: true, // Center the title
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF536DFE), Color(0xFF4CAF50)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            children: [
              _buildMenuItem(
                context,
                "Legal Resources",
                "assets/images/legal.png",
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LegalPage()));
                },
              ),
              _buildMenuItem(
                context,
                "FAQ",
                "assets/images/faq.png",
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FaqPage()));
                },
              ),
              _buildMenuItem(
                context,
                "Legal News",
                "assets/images/legalnews.png",
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LegalNewsPage()));
                },
              ),
              _buildMenuItem(
                context,
                "Notifications",
                "assets/images/notification.png",
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationsPage()));
                },
              ),
              _buildMenuItem(
                context,
                "Support",
                "assets/images/support.png",
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SupportPage()));
                },
              ),
              _buildMenuItem(
                context,
                "Emergency Contact",
                "assets/images/emergency.png",
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const EmergencyPage()));
                },
              ),
              _buildMenuItem(
                context,
                "Feedback",
                "assets/images/feedback.png",
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FeedbackPage()));
                },
              ),
              _buildMenuItem(
                context,
                "Admin",
                "assets/images/admin.png",
                ()
                
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, String imagePath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 60),
            const SizedBox(height: 6),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
