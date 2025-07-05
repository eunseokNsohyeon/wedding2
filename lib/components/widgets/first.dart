import 'package:flutter/material.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/first.jpg', fit: BoxFit.cover);
  }
}
