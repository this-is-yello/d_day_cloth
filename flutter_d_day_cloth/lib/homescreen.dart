import 'package:flutter/material.dart';
import 'package:flutter_d_day_cloth/main.dart';
import 'package:flutter_d_day_cloth/promotionscreen.dart';

import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  CarouselController carouselController = CarouselController();

  var carouselImgs = [
    Image.asset('assets/images/go_home.png'),
    Image.asset('assets/images/move.png'),
    Image.asset('assets/images/quick_deli.png'),
    Image.asset('assets/images/remodeling.png'),
    Image.asset('assets/images/sale.png'),
    Image.asset('assets/images/shopping.png'),
    Image.asset('assets/images/today_deal.png'),
  ];

  var mainColor = Color(0xff205B48);
  var blackColor = Color(0xff1E1E1E);
  var whiteColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0),

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: whiteColor,
        title: Text('by 覺 렌탈센터', style: TextStyle(color: blackColor, fontWeight: FontWeight.w700)),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag, size: 30, color: Colors.black),
            onPressed: () {
              
            },
          )
        ],
      ),

      body: ListView(
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
                          color: whiteColor,
                        ),
                        child: Center(child: Text('예복대여', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))),
                    ),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context) => PromotionScreen()
                      // ));
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
                          color: whiteColor,
                        ),
                        child: Center(child: Text('예복대여', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))),
                    ),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context) => PromotionScreen()
                      // ));
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
          CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
              autoPlay: true
            ),
            items: carouselBox.map((carouselImgs) {
              return Container(
                // padding: EdgeInsets.symmetric(horizontal: 7),
                child: carouselImgs,
              );
            }).toList(),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, size: 30),
            label: '카테고리',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30),
            label: '검색',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outlined, size: 30),
            label: '예약내역',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, size: 30),
            label: '마이페이지',
          ),
        ],
      ),
    );
  }
}