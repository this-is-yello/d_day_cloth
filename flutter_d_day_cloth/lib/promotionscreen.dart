import 'package:flutter/material.dart';
import 'package:flutter_d_day_cloth/tabbarview.dart';
import 'package:flutter_d_day_cloth/todownload.dart';


class PromotionScreen extends StatelessWidget {
  const PromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Promotion Video', style: TextStyle(fontFamily: 'Lineseed'))
        ),
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff205B48),
          minimumSize: Size(200, 80),
        ),
        child: Text('대여하러가자', style: TextStyle(color: Colors.white, fontSize: 24)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => WebMain()
          ));
        },
      ),
    );
  }
}

class WebMain extends StatelessWidget {
  const WebMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 420),
            child: WebScreen()
          ),
          Padding(padding: EdgeInsets.all(20)),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 480),
            child: ToDownload()
          ),
        ],
      ),
    );
  }
}