import 'package:flutter/material.dart';
import 'package:registration_form/facebook_page.dart';
import 'package:registration_form/instagram_page.dart';

import 'package:registration_form/zappy_page.dart';

void main()=> runApp(const MyHome());
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: const Instagram());
  }
}
