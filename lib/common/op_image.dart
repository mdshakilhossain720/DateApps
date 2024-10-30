
import 'package:flutter/material.dart';

import '../style/color.dart';

class OpaqueImage extends StatelessWidget {

  final imageUrl;

  const OpaqueImage({ @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          imageUrl,
          width: double.maxFinite,
          height: double.maxFinite,
          fit: BoxFit.fill,
        ),
        Container(
          color: primaryColorOpacity.withOpacity(0.85),
        ),
      ],
    );
  }
}