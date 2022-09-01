import 'package:flutter/material.dart';
import 'package:appdev_final_project/features/card2_widgets/circle_image.dart';

class MemberCard extends StatelessWidget {
  const MemberCard(
      {Key? key, required this.memberName, required this.imageProvider})
      : super(key: key);

  final String memberName;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    //Create a template for membercard containing membername and image.
    return Container(
      child: Column(
        children: [
          Column(
            children: [
              CircleImage(
                imageRadius: 28,
                imageProvider: imageProvider,
              ),
              Column(
                children: [
                  Text(memberName,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Bangers',
                          fontSize: 22)),
                ],
              ),
            ],
          ),
          //Created a Icon that will display a snackbar
          IconButton(
            onPressed: () {
              var snackBar =
                  SnackBar(content: Text("Heart sent to $memberName!"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            iconSize: 30,
          )
        ],
      ),
    );
  }
}
