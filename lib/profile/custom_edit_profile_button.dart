import 'package:flutter/material.dart';

class CustomEditProfileButton extends StatefulWidget {
  const CustomEditProfileButton({super.key});

  @override
  State<CustomEditProfileButton> createState() =>
      _CustomEditProfileButtonState();
}

class _CustomEditProfileButtonState extends State<CustomEditProfileButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: 200,
          height: 60,
          alignment: AlignmentDirectional.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: const LinearGradient(colors: [Colors.indigo, Colors.purple]),
          ),
          child: const Text(
            'Edit Profile',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
