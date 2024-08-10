import 'package:flutter/material.dart';
import 'package:registration_form/instagram_page.dart';

void main()=> runApp(const MyHome());
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Instagram());
  }
}
