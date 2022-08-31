import 'package:flutter/material.dart';

class PinkQuote extends StatelessWidget {
  const PinkQuote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PINK"),
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
                        "assets/images/quotes_img/pink_quote_bg.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '\“The elevator to success is out of order. You\’ll have to use the stairs, one step at a time.\”',
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
