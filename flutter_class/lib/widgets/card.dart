import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String routeName;
  final IconData iconData; // Add an icon data property

  const CardWidget({
    Key? key,
    required this.title,
    required this.routeName,
    required this.iconData, // Pass in the icon data
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            // Use Row to align icon and text horizontally
            children: [
              Icon(
                iconData, // Use the provided icon data
                size: 30, // Adjust the size as needed
              ),
              SizedBox(width: 16), // Add some space between the icon and text
              Text(
                title,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
