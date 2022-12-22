import 'package:flutter/material.dart';

import 'package:flutter_d_day_cloth/rent/meetingrent.dart';
import 'package:flutter_d_day_cloth/rent/weddingrent.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var mainColor = Color(0xff205B48);
  var blackColor = Color(0xff1E1E1E);
  var whiteColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: mainColor,
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: InkWell(
                  child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 4,
                            offset: Offset(0, 4), 
                          )
                        ], 
                        color: whiteColor,
                      ),
                      
                      child: Center(child: Text('면접대여', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ClickMeetingRent()
                    ));
                  },
                )
              ),
              Padding(padding: EdgeInsets.all(8)),
              Flexible(
                fit: FlexFit.tight,
                child: InkWell(
                  child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 4,
                            offset: Offset(0, 4), 
                          )
                        ], 
                        color: whiteColor,
                      ),
                      child: Center(child: Text('예복대여', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ClickWeddingRent()
                    ));
                  },
                )
              )
            ],
          )
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
          height:2,
          width: double.infinity,
          color:Colors.grey[300],
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Text('인기상품', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.black,
                  ),
                  Container(
                    width: 240,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('김주현바이각', style: TextStyle(fontSize: 14, color: Colors.grey)),
                        Text('[면접대여] 블랙 솔리드 슈트', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Text('50,000원', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  )
                ],
              )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
              height: 1,
              width: double.infinity,
              color:Colors.grey[300],
            ),
          ],
        ),
      ],
    );
  }
}