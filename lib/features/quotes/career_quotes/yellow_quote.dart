import 'package:flutter/material.dart';

class YellowQuote extends StatelessWidget {
  const YellowQuote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YELLOW"),
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
                        "assets/images/quotes_img/yellow_quote_bg.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '\"Successful people are not gifted; they just work hard, then succeed on purpose.\"',
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
