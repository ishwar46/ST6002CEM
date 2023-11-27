import 'package:flutter/material.dart';

import '../core/common/my_snackbar.dart';

class ExpandFlex extends StatefulWidget {
  const ExpandFlex({super.key});

  @override
  State<ExpandFlex> createState() => _ExpandFlexState();
}

class _ExpandFlexState extends State<ExpandFlex> {
  // void _showSnackbar() {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(
  //       backgroundColor: Colors.green,
  //       behavior: SnackBarBehavior.floating,
  //       content: Text(
  //         'Malai Click Garyauuu',
  //         textAlign: TextAlign.center,
  //       ),
  //       duration: Duration(seconds: 1),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            //height: MediaQuery.of(context).size.height * .5,
            height: 100,
            width: MediaQuery.of(context).size.width * 5,
            color: Colors.red,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                showSnackbar(context, 'Hello', color: Colors.red);
              },
              child: const Text("Button1"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 5,
            color: Colors.green,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                showSnackbar(context, 'Malai Click Garyauuu',
                    color: Colors.green);
              },
              child: Text("Button1"),
            ),
          ),
        ],
      ),
    ));
  }
}
