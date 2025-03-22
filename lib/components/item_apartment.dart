
import 'package:flutter/material.dart';

class ItemApartment extends StatelessWidget {
  const ItemApartment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
          )
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://images.pexels.com/photos/1643383/pexels-photo-1643383.jpeg?auto=compress&cs=tinysrgb&w=1200',
              width: 150,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sand House',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87),
                ),
                Text(
                  '\$380.00',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.brown[400]),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_outline,
                      size: 15,
                      color: Colors.brown[300],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Jonathan Doe',
                      style: TextStyle(fontSize: 12, color: Colors.brown),
                    ),
                    const SizedBox(width: 2),
                    Icon(Icons.check_circle,
                        size: 15, color: Colors.green),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.gif_box_outlined,
                      size: 15,
                      color: Colors.brown[300],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '766 s.q.M',
                      style: TextStyle(fontSize: 12, color: Colors.brown),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 15,
                      color: Colors.brown[300],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '234 New York, NY 12345',
                      style: TextStyle(fontSize: 12, color: Colors.brown),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
