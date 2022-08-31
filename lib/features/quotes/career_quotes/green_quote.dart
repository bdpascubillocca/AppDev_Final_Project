import 'package:flutter/material.dart';

class GreenQuote extends StatelessWidget {
  const GreenQuote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GREEN"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: 350,
                height: 450,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/quotes_img/green_quote_bg.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '\"If the plan didn\'t work, change the plan but not the goal.\"',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
