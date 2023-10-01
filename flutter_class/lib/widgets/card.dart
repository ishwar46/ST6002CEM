import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String routeName;
  final IconData iconData;

  const CardWidget({
    Key? key,
    required this.title,
    required this.routeName,
    required this.iconData,
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
            children: [
              Icon(
                iconData,
                size: 30,
              ),
              const SizedBox(width: 15),
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
