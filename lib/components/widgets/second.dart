import 'package:flutter/material.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/second.jpg', fit: BoxFit.cover);
  }
}
