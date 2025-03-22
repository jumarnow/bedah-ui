import 'package:flutter/material.dart';

class ItemServiceCoffe extends StatelessWidget {
  const ItemServiceCoffe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 30, 40, 60),
      decoration: BoxDecoration(
        color: Colors.brown[50],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(200),
          bottomRight: Radius.circular(200),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            color: Colors.brown[400]!,
            offset: const Offset(1, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image.network(
              'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              fit: BoxFit.cover,
              width: 70,
              height: 70,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'casual chocolate coffee',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.brown[900],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Regular casual coffee (without milk or cream) is low in calories and a great way to start your day.',
            style: const TextStyle(
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              backgroundColor: Colors.brown[700],
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text('Explore More'),
          ),
        ],
      ),
    );
  }
}
