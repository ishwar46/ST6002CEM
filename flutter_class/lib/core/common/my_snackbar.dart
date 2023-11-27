import 'package:flutter/material.dart';

void showSnackbar(
  BuildContext context,
  String message, {
  Color color = Colors.red,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      behavior: SnackBarBehavior.floating,
      content: Text(
        message,
        textAlign: TextAlign.center,
      ),
      duration: Duration(seconds: 1),
    ),
  );
}
