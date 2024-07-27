import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:registration_form/profile/customTile.dart';
import 'package:registration_form/profile/custom_edit_profile_button.dart';
import 'package:registration_form/profile/profile_background_pic.dart';

const List<CustomTextField> customTxtFieldList = [
  CustomTextField(prefixIconData: Icons.person, label: 'Tom & Jerry'),
  CustomTextField(prefixIconData: Icons.calendar_month, label: 'Birthday'),
  CustomTextField(prefixIconData: Icons.phone_android, label: '0792253070'),
  CustomTextField(
      prefixIconData: Icons.camera_alt_outlined, label: 'instagram account'),
  CustomTextField(prefixIconData: Icons.email_outlined, label: 'info@gmail.com'),
  CustomTextField(prefixIconData: Icons.remove_red_eye_outlined, label: 'Password',suffixIconData: Icons.screen_rotation_alt,),
];

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ProfileBackgroundPic(),
            ),
            SizedBox(height: 90),
            ...customTxtFieldList,
            CustomEditProfileButton(),
          ],
        ),
      ),
    );
  }
}
