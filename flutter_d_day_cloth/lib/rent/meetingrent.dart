import 'package:flutter/material.dart';

import 'package:flutter_d_day_cloth/todownload.dart';
import 'package:flutter_d_day_cloth/rent/Period.dart';
import 'package:flutter_d_day_cloth/rent/product.dart';

class ClickMeetingRent extends StatelessWidget {
  const ClickMeetingRent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 420),
            child: MeetingRent()
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

class MeetingRent extends StatelessWidget {
  const MeetingRent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: InkWell(
              child: Container(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[200],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('대여기간 설정', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
                    Text("yyyy.mm.dd - yyyy.mm.dd", style: TextStyle(fontSize: 16, color: Colors.grey),)
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ClickPeriodSet()
                ));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: InkWell(
                    child: Container(
                        height: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 4,
                              offset: Offset(0, 4), 
                            )
                          ], 
                          color: Colors.white,
                        ),
                        
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('김주현바이각', style: TextStyle(fontSize: 14, color: Colors.grey)),
                                  Padding(padding: EdgeInsets.all(2)),
                                  Text('[면접대여]상품이름', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                                  Padding(padding: EdgeInsets.all(2)),
                                  Text('0원', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))
                                ],
                              ),
                            )
                          ],
                        ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ClickProduct()
                      ));
                    },
                  )
                ),
                Padding(padding: EdgeInsets.all(8)),
                Flexible(
                  fit: FlexFit.tight,
                  child: InkWell(
                    child: Container(
                        height: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 4,
                              offset: Offset(0, 4), 
                            )
                          ], 
                          color: Colors.white,
                        ),
                        
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('김주현바이각', style: TextStyle(fontSize: 14, color: Colors.grey)),
                                  Padding(padding: EdgeInsets.all(2)),
                                  Text('[면접대여]상품이름', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                                  Padding(padding: EdgeInsets.all(2)),
                                  Text('0원', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))
                                ],
                              ),
                            )
                          ],
                        ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ClickProduct()
                      ));
                    },
                  )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}