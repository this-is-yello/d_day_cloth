import 'package:flutter/material.dart';

import 'package:flutter_d_day_cloth/booking/bookdetail.dart';
import 'package:flutter_d_day_cloth/todownload.dart';

class ClickBooking extends StatelessWidget {
  const ClickBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 420),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.black),
              ),
              body: Booking(),
            )
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

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text('예약내역',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          ),
          Container(
            height: 120,
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                    color: Colors.grey,
                  )
                ),
                Container(
                  width: 260,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('[대여종류] 상품이름', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                      Padding(padding: EdgeInsets.all(4)),
                      Text('yyyy.mm.dd - yyyy.mm.dd', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w700)),
                      Padding(padding: EdgeInsets.all(4)),
                      InkWell(
                        child: Text('상세보기>', style: TextStyle(color: Color(0xff082EB5), fontSize: 16, fontWeight: FontWeight.w700),),
                        onTap: () {
                          Navigator.push( context, MaterialPageRoute(builder: (context) => ClickBookDetail()));
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)
                    ),
                    color: Colors.grey,
                  )
                ),
                Container(
                  width: 260,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('[대여종류] 상품이름', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                      Padding(padding: EdgeInsets.all(4)),
                      Text('yyyy.mm.dd - yyyy.mm.dd', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w700)),
                      Padding(padding: EdgeInsets.all(4)),
                      InkWell(
                        child: Text('상세보기>', style: TextStyle(color: Color(0xff082EB5), fontSize: 16, fontWeight: FontWeight.w700)),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ClickBookDetail()));
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
