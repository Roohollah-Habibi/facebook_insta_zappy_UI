import 'package:flutter/material.dart';

const profileImg = 'assets/images/tj9.png';

class ProfileBackgroundPic extends StatelessWidget {
  const ProfileBackgroundPic({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipPath(
          clipper: MyCustomClipper(),
          child: Container(
            decoration: const BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.indigo, Colors.purple],begin: Alignment.topLeft,end: Alignment.bottomRight)),
            alignment: const FractionalOffset(.5, .4),
            child: const Text(
              'Tom & Jerry',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Color.fromARGB(
                  255, 221, 215, 207)),
            ),
          ),
        ),
        Positioned(
          top: 25,
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back,size: 40,color: Color.fromARGB(
              255, 221, 215, 207),)),
        ),
        buildImagePositioned(),
      ],
    );
  }

  Positioned buildImagePositioned() {
    return Positioned(
        left: 50,
        right: 50,
        bottom: -70,
        child: Container(
          alignment: AlignmentDirectional.center,
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.asset(
            profileImg,
            fit: BoxFit.cover,
          ),
        ),
      );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final myPath = Path();
    myPath.lineTo(0, size.height - 70);
    myPath.quadraticBezierTo(100, size.height, size.width / 2, size.height);
    myPath.quadraticBezierTo(300, size.height, size.width, size.height - 70);
    myPath.lineTo(size.width, 0);
    return myPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
