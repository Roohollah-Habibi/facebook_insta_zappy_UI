import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:registration_form/facebook_page.dart';

bool _showEye = false;

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              children: [
                Expanded(flex: 3, child: instagramLogoText),
                txtField(hintText: 'Phone number, username, or email',),
                txtField(hintText: 'Password', hasIcon: true,func: () => setState(() {
                  _showEye = !_showEye;
                }),),
                forgotPassowrdSection,
                buildElevatedLoginButton,
                makeOrSection,
                loginWithFacebook,
                bottomPart,
              ],
            ),
          ),
        ),
      );
  }

  Expanded get bottomPart {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: GoogleFonts.roboto(fontSize: 17, color: Colors.grey),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.blueAccent,
                padding: const EdgeInsets.all(5),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('Sign up'),
            )
          ],
        ),
      ),
    );
  }

  Widget get instagramLogoText {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 135,
        child: Text(
          'Instagram',
          style: GoogleFonts.lobsterTwo(fontSize: 70, color: Colors.black),
        ),
      ),
    );
  }

  TextButton get loginWithFacebook {
    return TextButton.icon(
      onPressed: () {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FacebookPage(),
              ));
        });
      },
      icon: const Icon(
        FontAwesomeIcons.squareFacebook,
        color: Colors.blueAccent,
      ),
      label: Text(
        'Log in with Facebook',
        style: GoogleFonts.roboto(
            color: Colors.blueAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Align get forgotPassowrdSection {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Forgot password',
          style: GoogleFonts.roboto(
              color: Colors.blueAccent, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Padding get makeOrSection {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              color: Colors.blueGrey,
              endIndent: 45,
              indent: 12,
              thickness: 1,
            ),
          ),
          Text(
            'OR',
            style: GoogleFonts.roboto(color: Colors.grey, fontSize: 20),
          ),
          const Expanded(
            child: Divider(
              color: Colors.blueGrey,
              height: 20,
              thickness: 1,
              endIndent: 12,
              indent: 45,
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton get buildElevatedLoginButton {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(390, 50),
        minimumSize: const Size(200, 50),
        maximumSize: const Size(400, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 76, 181, 249),
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 27,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: const Text('Log in'),
    );
  }

  InputDecoration buildInputDecoration(
      {required String hintText, bool hasIcon = false,void Function()? func}) {
    return InputDecoration(
      suffixIcon: hasIcon
          ? GestureDetector(
              onTap: func != null ? func : null,
              child: Icon(
                  _showEye ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash),
            )
          : null,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
            color: Color.fromARGB(255, 223, 223, 223), width: 2),
      ),
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.grey),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
            color: Color.fromARGB(255, 223, 223, 223), width: 2),
      ),
    );
  }
  Widget txtField({required String hintText, bool hasIcon = false,void Function()? func}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10.0),
      child: TextField(
        obscureText: (func != null) ? _showEye : false,
        decoration: buildInputDecoration(hintText: hintText, hasIcon: hasIcon,func: func),
      ),
    );
  }
}
