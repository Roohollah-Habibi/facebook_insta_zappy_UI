import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData prefixIconData;
  final String label;
  final IconData? suffixIconData;
  const CustomTextField({super.key, required this.prefixIconData,required this.label,this.suffixIconData});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.grey)),
        contentPadding: const EdgeInsets.all(12),
        label: Text(
          label,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        prefixIcon: Icon(
          prefixIconData,
          size: 40,
          color: Colors.indigo,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(suffixIconData,size: 40,color: Colors.grey,),
        ),
        prefixIconConstraints: const BoxConstraints.tightForFinite(width: 100),
      ),
    );
  }
}
