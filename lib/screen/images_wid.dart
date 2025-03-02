import 'package:flutter/material.dart';

class images_wid extends StatelessWidget {
  const images_wid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/gym.jpg"),
        ],
      ),
    );
  }
}
