
import 'package:flutter/material.dart';

class ItemMeetingRoom extends StatelessWidget {
  const ItemMeetingRoom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Design Meeting',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '10:00 am - 12:00 pm',
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 34,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black87,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1200',
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black87,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1200',
                        fit: BoxFit.cover,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black87,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1200',
                        fit: BoxFit.cover,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.red[400]),
                    foregroundColor:
                        WidgetStateProperty.all(Colors.white),
                    shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10)),
                  ),
                  child: Text('Join', style: TextStyle(fontSize: 12)),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.black87),
                    foregroundColor:
                        WidgetStateProperty.all(Colors.white),
                    shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10)),
                  ),
                  child: Text(
                    'Postpone',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
