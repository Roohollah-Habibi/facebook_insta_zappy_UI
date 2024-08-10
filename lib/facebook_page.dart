import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registration_form/zappy_page.dart';

const imageSrc = 'assets/images/facebook.jpg';

bool _showEye = false;

class FacebookPage extends StatefulWidget {
  const FacebookPage({super.key});

  @override
  State<FacebookPage> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(child: Image.asset('assets/images/facebook.jpg',fit: BoxFit.cover,height: 300,)),
                const SizedBox(
                  height: 40,
                ),
                txtField(hintText: 'Phone number or email'),
                txtField(hintText: 'Password', hasIcon: true),
                buildButtons(
                    txt: 'Log in',
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 76, 10, 250)),
                forgotPassowrdSection('Forgot password'),
                forgotPassowrdSection('Back'),
                makeOrSection,
                const SizedBox(height: 30,),
                buildButtons(
                  txt: 'Create new account',
                  foregroundColor: const Color.fromARGB(255, 76, 130, 200),
                  backgroundColor:  Colors.cyan.shade50,
                ),
              ],
            ),
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
              color: Colors.black,
              endIndent: 10,
              indent: 12,
              thickness: 1,
            ),
          ),
          Text(
            'Or',
            style: GoogleFonts.roboto(color: Colors.black, fontSize: 20),
          ),
          const Expanded(
            child: Divider(
              color: Colors.black,
              height: 20,
              thickness: 1,
              endIndent: 12,
              indent: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget forgotPassowrdSection(String txt) {
    return TextButton(
      onPressed: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ZappyChat(),));
        });
      },
      child: Text(
        txt,
        style: GoogleFonts.roboto(
            color: Colors.blueAccent.shade700,
            fontWeight: FontWeight.bold,
            fontSize: 22),
      ),
    );
  }

  Widget buildButtons(
      {required txt, Color? foregroundColor, Color? backgroundColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(390, 50),
          minimumSize: const Size(200, 50),
          maximumSize: const Size(400, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Text(txt),
      ),
    );
  }

  Widget txtField({required String hintText, bool hasIcon = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        obscureText: hasIcon ? _showEye : false,
        decoration: buildInputDecoration(hintText: hintText, hasIcon: hasIcon),
      ),
    );
  }

  InputDecoration buildInputDecoration(
      {required String hintText, bool hasIcon = false}) {
    return InputDecoration(
      suffixIcon: hasIcon
          ? GestureDetector(
              onTap: () => setState(() {
                _showEye = !_showEye;
              }),
              child: Icon(
                  _showEye ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash),
            )
          : null,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(1),
        borderSide: const BorderSide(
            color: Color.fromARGB(255, 223, 223, 223), width: 2),
      ),
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.grey),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
            color: Color.fromARGB(255, 223, 223, 223), width: 2),
      ),
    );
  }
}
