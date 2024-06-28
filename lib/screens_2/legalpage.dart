import 'package:flutter/material.dart';
import 'package:nyay_1/screens_3/Criminallawpage.dart';
import 'package:nyay_1/screens_3/businessPage.dart';
import 'package:nyay_1/screens_3/civilPage.dart';
import 'package:nyay_1/screens_3/Generallaw.dart';
import 'package:nyay_1/screens_3/contractPage.dart';
import 'package:nyay_1/screens_3/famlilaw.dart';
import 'package:nyay_1/screens_3/propertyPage.dart';
import 'package:nyay_1/screens_3/trafficPage.dart';

class LegalPage extends StatefulWidget {
  const LegalPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LegalPageState createState() => _LegalPageState();
}

class _LegalPageState extends State<LegalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Legal Resources")),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:  [Color(0xFF536DFE), Color(0xFF4CAF50)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20, // Increased spacing
              crossAxisSpacing: 20, // Increased spacing
            ),
            children: [
              _buildCard(
                title: "Family Law",
                imageAsset: "assets/images/family.png",
                destination: const FamliylawPage(),
              ),
              _buildCard(
                title: "Criminal Law",
                imageAsset: "assets/images/criminal.png",
                destination: const CriminallawPage(),
              ),
              _buildCard(
                title: "General Law",
                imageAsset: "assets/images/education.png",
                destination: const educationPage(),
              ),
              _buildCard(
                title: "Property Law",
                imageAsset: "assets/images/property.png",
                destination: const propertyPage(),
              ),
              _buildCard(
                title: "Business Law",
                imageAsset: "assets/images/business.png",
                destination: const businessPage(),
              ),
              _buildCard(
                title: "Matrimonial Law",
                imageAsset: "assets/images/contract.png",
                destination: const contractPage(),
              ),
              _buildCard(
                title: "Civil Law",
                imageAsset: "assets/images/civil.png",
                destination: const civilPage(),
              ),
              _buildCard(
                title: "Traffic Law",
                imageAsset: "assets/images/traffic.png",
                destination: const trafficPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String imageAsset,
    required Widget destination,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: InkWell(
          splashColor: const Color.fromARGB(255, 244, 138, 24),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => destination));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(imageAsset),
                height: 60,
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
