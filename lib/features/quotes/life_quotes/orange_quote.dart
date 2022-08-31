import 'package:flutter/material.dart';

class OrangeQuote extends StatelessWidget {
  const OrangeQuote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ORANGE"),
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
                        "assets/images/quotes_img/orange_quote_bg.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '\"Don\'t stress yourself out with things you can\'t control.\"',
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
