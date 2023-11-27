import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: Image.asset('assets/img/manu.jpeg')),
              const SizedBox(
                height: 5,
              ),
              // ClipRRect(
              //     borderRadius: BorderRadius.circular(300.0),
              //     child: Image.network(
              //         "https://www.google.com/url?sa=i&url=https%3A%2F%2Ftwitter.com%2Frealmadriden%2Fstatus%2F1671903372528742402&psig=AOvVaw2ozbRD8Hh_0grSPRKuT6Ge&ust=1696998785740000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCKjY65_T6oEDFQAAAAAdAAAAABAJ")),
            ],
          ),
        ),
      ),
    );
  }
}
