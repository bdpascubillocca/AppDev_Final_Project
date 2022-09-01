import 'package:flutter/material.dart';
import 'package:appdev_final_project/features/card2_widgets/member_card.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GROUP MEMBERS',
          style: TextStyle(fontSize: 27),
        ),
        //Set the appbar/title to center
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 70, 10, 70),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/card_bg_img/stars.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 50,
            ),
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MemberCard(
                      memberName: "Benedick",
                      imageProvider:
                          AssetImage("assets/images/member_img/benedick.jpg"),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MemberCard(
                      memberName: "Regina",
                      imageProvider:
                          AssetImage("assets/images/member_img/regina.jpg"),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MemberCard(
                      memberName: "Jaina",
                      imageProvider:
                          AssetImage("assets/images/member_img/jaina.jpg"),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MemberCard(
                      memberName: "Kevin",
                      imageProvider:
                          AssetImage("assets/images/member_img/kevin.jpg"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
