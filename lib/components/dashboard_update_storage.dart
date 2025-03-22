
import 'package:flutter/material.dart';

class DashboardUpgradeStorage extends StatelessWidget {
  const DashboardUpgradeStorage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Available Upgrade',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
                Text(
                  '\$35',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
            child: Row(
              children: [
                Text('1GB', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(width: 8),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Transform.translate(
                      offset: Offset(0, 4),
                      child: Icon(Icons.keyboard_arrow_up),
                    ),
                    Transform.translate(
                      offset: Offset(0, -4),
                      child: Icon(Icons.keyboard_arrow_down),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
