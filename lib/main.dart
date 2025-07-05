import 'package:flutter/material.dart';
import 'package:wedding/components/layouts/web_app_layout.dart';
import 'package:wedding/components/widgets/first.dart';
import 'package:wedding/components/widgets/fourth.dart';
import 'package:wedding/components/widgets/second.dart';
import 'package:wedding/components/widgets/third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '은석 & 소현 결혼해요',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: const Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return WebAppLayout(
      child: const SingleChildScrollView(
        child: Column(
          children: [
            FirstWidget(),
            SecondWidget(),
            ThirdWidget(),
            FourthWidget(),
          ],
        ),
      ),
    );
  }
}
