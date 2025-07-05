import 'package:flutter/material.dart';

class ThirdWidget extends StatelessWidget {
  const ThirdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset('assets/images/third.jpg', fit: BoxFit.cover),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Image.asset(
                'assets/images/third_button.png',
                scale: 2.5,
                fit: BoxFit.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
