import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodPandaScreen extends StatelessWidget {
  const FoodPandaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Food Panda", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset("assets/icons8-foodpanda-48.png",
                width: 80, height: 80),
            const SizedBox(height: 10),
            const Text(
              "foodpanda",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink),
            ),
            const SizedBox(height: 5),
            const Text("Are you hungry? Order Now...",
                style: TextStyle(fontSize: 16, color: Colors.black)),
            const SizedBox(height: 20),
            const Text("SET MENU",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildMenuItem("Pizza", FontAwesomeIcons.pizzaSlice),
                _buildMenuItem("Burger", FontAwesomeIcons.hamburger),
                _buildMenuItem("Juice", FontAwesomeIcons.wineGlass),
                _buildMenuItem("Fried Rice", FontAwesomeIcons.bowlFood),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(icon, size: 30, color: Colors.white),
          ),
          const SizedBox(height: 5),
          Text(title,
              style:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
