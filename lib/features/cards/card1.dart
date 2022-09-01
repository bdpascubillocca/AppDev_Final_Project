import 'package:flutter/material.dart';
import 'package:appdev_final_project/themes/text_themes.dart';
import 'package:appdev_final_project/features/card1_widgets/topic_picker/picked_love_topic.dart';
import 'package:appdev_final_project/features/card1_widgets/topic_picker/picked_friendship_topic.dart';
import 'package:appdev_final_project/features/card1_widgets/topic_picker/picked_life_topic.dart';
import 'package:appdev_final_project/features/card1_widgets/topic_picker/picked_motivation_topic.dart';
import 'package:appdev_final_project/features/card1_widgets/topic_picker/picked_career_topic.dart';
import 'package:appdev_final_project/features/card1_widgets/topic_picker/picked_health_topic.dart';

class Card1 extends StatefulWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'PICK A TOPIC',
        style: TextStyle(fontSize: 30),
      )),
      body: Container(
        padding: EdgeInsets.all(10.0),
        //Create a  grid
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Specify number of children in the cross axis
            crossAxisCount: 2,
            //Specify the cross axis spacing between the children
            crossAxisSpacing: 10,
            //Specify the main axis spacing between the children
            mainAxisSpacing: 10,
          ),
          //Each containers goes here
          children: [
            //Inkwell is just a container that reacts on motion. We used inwell because we cannot us "onpress" on grid view. A rectangular area of a Material that responds to touch.
            InkWell(
              //when user tap a tile it creates a new screen displaying whatever is on the path specified in this case "PickedLoveTopic()"
              onTap: () {
                //Add a bit of delay to show the ripple effect
                Future.delayed(Duration(milliseconds: 300), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PickedLoveTopic()));
                });
              },
              //Used ink widget here instead of container widget to use ripple effect.
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/topic_img/career.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  child: Text(
                    'LOVE',
                    style: TextStyle(
                        fontFamily: "Bangers",
                        fontSize: 25,
                        color: Colors.black),
                  ),
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Future.delayed(Duration(milliseconds: 300), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PickedFriendshipTopic()));
                });
              },
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/topic_img/friendship.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  child: Text(
                    'FRIENDSHIP',
                    style: TextStyle(
                        fontFamily: "Bangers",
                        fontSize: 25,
                        color: Colors.black),
                  ),
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Future.delayed(Duration(milliseconds: 300), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PickedLifeTopic()));
                });
              },
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/topic_img/life.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  child: Text(
                    'LIFE',
                    style: TextStyle(
                        fontFamily: "Bangers",
                        fontSize: 25,
                        color: Colors.black),
                  ),
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Future.delayed(Duration(milliseconds: 300), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PickedMotivationTopic()));
                });
              },
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/topic_img/motivation.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  child: Text(
                    'MOTIVATION',
                    style: TextStyle(
                        fontFamily: "Bangers",
                        fontSize: 25,
                        color: Colors.black),
                  ),
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Future.delayed(Duration(milliseconds: 300), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PickedCareerTopic()));
                });
              },
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/topic_img/career.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  child: Text(
                    'CAREER',
                    style: TextStyle(
                        fontFamily: "Bangers",
                        fontSize: 25,
                        color: Colors.black),
                  ),
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Future.delayed(Duration(milliseconds: 300), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PickedHealthTopic()));
                });
              },
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/topic_img/health.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  child: Text(
                    'HEALTH',
                    style: TextStyle(
                        fontFamily: "Bangers",
                        fontSize: 25,
                        color: Colors.black),
                  ),
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
