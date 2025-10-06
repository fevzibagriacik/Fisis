import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class HeaderClipper3 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    String svgPath = "M252.012 25.7332C89.5238 78.9664 232 142 115.512 150.733C35.8967 156.702 26.1811 244.09 28.0074 298.815C28.6406 317.787 9.11255 332.975 -8.43266 325.728L-122.805 278.49C-135.057 273.43 -140.886 259.397 -135.826 247.146L-16.7022 -41.2775C-12.7585 -50.826 -3.22144 -56.7788 7.07574 -55.9449C84.9036 -49.6417 394.645 -20.9951 252.012 25.7332Z";

    Path path = parseSvgPathData(svgPath);

    final scaleX = size.width / 290;
    final scaleY = size.height / 328;

    return path.transform(Matrix4.diagonal3Values(scaleX, scaleY, 1).storage);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper)  => false;

}



