
import 'package:flutter/material.dart';

class ItemMeeting extends StatelessWidget {
  const ItemMeeting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey[700],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.computer,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Daily Design Meeting',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.access_time,
                      color: Colors.grey,
                      size: 18,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '10:00 AM - 11:00 AM',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text('JOIN'),
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  Colors.black,
                ),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                padding: WidgetStatePropertyAll(
                  const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
