import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter_d_day_cloth/todownload.dart';
import 'package:flutter_d_day_cloth/promotionscreen.dart';
import 'package:flutter_d_day_cloth/homescreen.dart';
import 'package:flutter_d_day_cloth/search/searchscreen.dart';
import 'package:flutter_d_day_cloth/mypage/usermypage.dart';
import 'package:flutter_d_day_cloth/mypage/adminmypage.dart';
import 'package:flutter_d_day_cloth/booking/bookhistory.dart';
import 'package:flutter_d_day_cloth/shoppingbag/shoppingbag.dart';
import 'package:flutter_d_day_cloth/inquiry.dart';
import 'package:get/get.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  CarouselController carouselController = CarouselController();

  // myPageState() {
  //   if() {

  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text('by覺 렌탈센터', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_bag, size: 30, color: Colors.black),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ClickShoppingBag()));
              },
            )
          ],
        ),
        body: TabBarView(
          children: [
            Center(
              child: Home(),
            ),
            Center(
              child: Search(),
            ),
            Center(
              child: Booking(),
            ),
            Center(
              child: UserMypage(),
            )
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 4,
                offset: Offset(0, -4),
              )
            ],
            color: Colors.white,
          ),
          child: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Color(0xff205B48),
            labelColor: Color(0xff205B48),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(Icons.home, size: 30),
                text: '홈',
              ),
              Tab(
                icon: Icon(Icons.search, size: 30),
                text: '검색',
              ),
              Tab(
                icon: Icon(Icons.bookmark_outlined, size: 30),
                text: '예약내역',
              ),
              Tab(
                icon: Icon(Icons.account_circle, size: 30),
                text: '마이페이지',
              )
            ],
          )
        ),
      )
    );
  }
}
