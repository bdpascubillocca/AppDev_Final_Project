import 'package:flutter/material.dart';
import 'package:appdev_final_project/features/quotes/career_quotes/red_quote.dart';
import 'package:appdev_final_project/features/quotes/career_quotes/blue_quote.dart';
import 'package:appdev_final_project/features/quotes/career_quotes/green_quote.dart';
import 'package:appdev_final_project/features/quotes/career_quotes/yellow_quote.dart';
import 'package:appdev_final_project/features/quotes/career_quotes/pink_quote.dart';
import 'package:appdev_final_project/features/quotes/career_quotes/orange_quote.dart';

class PickedCareerTopic extends StatefulWidget {
  const PickedCareerTopic({Key? key}) : super(key: key);

  @override
  _PickedCareerTopicState createState() => _PickedCareerTopicState();
}

class _PickedCareerTopicState extends State<PickedCareerTopic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'PICK A COLOR',
        style: TextStyle(
          fontSize: 30,
        ),
      )),
      body: Container(
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            InkWell(
              onTap: () {
                Future.delayed(Duration(milliseconds: 300), () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RedQuote()));
                });
              },
              child: Ink(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/title_quotes_img/title_quotes_red.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'RED',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Future.delayed(Duration(milliseconds: 300), () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => YellowQuote()));
                });
              },
              child: Ink(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/title_quotes_img/title_quotes_yellow.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "YELLOW",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Future.delayed(Duration(milliseconds: 300), () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GreenQuote()));
                });
              },
              child: Ink(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/title_quotes_img/title_quotes_green.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "GREEN",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Future.delayed(Duration(milliseconds: 300), () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PinkQuote()));
                });
              },
              child: Ink(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/title_quotes_img/title_quotes_pink.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "PINK",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Future.delayed(Duration(milliseconds: 300), () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BlueQuote()));
                });
              },
              child: Ink(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/title_quotes_img/title_quotes_blue.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'BLUE',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Future.delayed(Duration(milliseconds: 300), () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrangeQuote()));
                });
              },
              child: Ink(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/title_quotes_img/title_quotes_orange.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ORANGE',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
