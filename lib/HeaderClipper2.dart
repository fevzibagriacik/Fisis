import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class HeaderClipper2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    String svgPath = "M202.614 26.8235C66.5032 75.989 183.859 128.127 86.8151 137.823C22.5734 144.242 11.4857 215.785 11.33 263.416C11.2689 282.106 -8.03225 296.715 -25.3069 289.58L-109.818 254.675C-122.069 249.616 -127.898 235.582 -122.838 223.331L-20.3563 -24.7987C-16.4752 -34.1955 -7.22956 -40.1295 2.91642 -39.4796C71.425 -35.0916 320.584 -15.7894 202.614 26.8235Z";
    Path path = parseSvgPathData(svgPath);

    final scaleX = size.width / 290;
    final scaleY = size.height / 328;

    return path.transform(Matrix4.diagonal3Values(scaleX, scaleY, 1).storage);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper)  => false;

}



