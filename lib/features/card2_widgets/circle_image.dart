import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    Key? key,
    this.imageProvider,
    this.imageRadius = 20,
  }) : super(key: key);
  //Gives border radius to the image in the membercard.
  final double imageRadius;
  final ImageProvider? imageProvider;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        //Use to minus radius -5 to show effect/background color white
        radius: imageRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
