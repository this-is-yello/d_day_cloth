import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_d_day_cloth/todownload.dart';
import 'package:flutter_d_day_cloth/inquiry.dart';
import 'package:flutter_d_day_cloth/shoppingbag/shoppingbag.dart';
import 'package:flutter_d_day_cloth/rent/gotobook.dart';

class ClickProduct extends StatelessWidget {
  const ClickProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 420),
            child: ProductScreen()
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

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  var clickBtn = 0;

  clickZero() {
    setState(() {
      clickBtn = 0;
    });
    print(clickBtn);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('상품상세', style: TextStyle(color: Colors.black, ),)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.black,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('렌탈샵이름', style: TextStyle(color: Colors.grey),),
                      Text('[대여종류]상품이름', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('0원', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                          Container(
                            height: 50,
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.share, size: 30),
                                  onPressed: () {},
                                ),
                                Padding(padding: EdgeInsets.all(4)),
                                IconButton(
                                  icon: Icon(Icons.favorite_border, size: 30),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8, bottom: 16),
                        color: Colors.black,
                        width: double.infinity,
                        height: 2,
                      ),
                      InkWell(
                        child: Text('(0개의 후기)'),
                        onTap: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.all(16),
            color: Colors.grey[200],
            width: double.infinity,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('기본정보', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.all(16),
            color: Colors.grey[200],
            width: double.infinity,
            height: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('상품소개', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.all(16),
            color: Colors.grey[200],
            width: double.infinity,
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('위치정보', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Builder(
        builder: (context) => BottomAppBar(
          child: Container(
            padding: EdgeInsets.all(8),
            height: 76,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff205B48),
                    ),
                    child: Center(child: Text('예약하기', style: TextStyle(color: Colors.white, fontSize: 16))),
                  ),
                  onTap: () {
                    clickBookBtn() {
                      if(clickBtn == 0) {
                        showBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return BookBottomSheet(clickZero : clickZero);
                          }
                        );
                        clickBtn++;
                        print(clickBtn);
                      }
                      else if (clickBtn == 1) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ClickGoToBook()));
                        clickBtn--;
                        print(clickBtn);
                      }
                    }
                    clickBookBtn();
                  }
                ),
                IconButton(
                  alignment: Alignment.center,

                  icon: Icon(Icons.shopping_bag_outlined, size: 32,),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text('장바구니 등록'),
                        content: Text('장바구니에 상품을 등록하였습니다.\n장바구니로 이동하시겠습니까?'),
                        actions: [
                          TextButton(
                            child: Text('이동하기', style: (TextStyle(color: Color(0xFF205B48))),),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ClickShoppingBag()));
                            },
                          ),
                          TextButton(
                            child: Text('취소', style: (TextStyle(color: Color(0xFF205B48))),),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ]
                      ),
                    );
                  }
                ),
                IconButton(
                  alignment: Alignment.center,
                  icon: Icon(Icons.headset_mic_outlined, size: 30,  color: Colors.black),
                  onPressed: () {
                    Navigator.push( context, MaterialPageRoute(builder: (context) => ClickInquiry()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.arrow_drop_up, size: 30),
      //   backgroundColor: Color(0xff205B48),
      //   onPressed: () {}
      // ),
    );
  }
}

class BookBottomSheet extends StatefulWidget {
  const BookBottomSheet({super.key, required this.clickZero});

  final Function() clickZero;

  @override
  State<BookBottomSheet> createState() => _BookBottomSheetState();
}

class _BookBottomSheetState extends State<BookBottomSheet> {

  final _valueList = ['S', 'M', 'L', '선택안함'];
  String? _upselectedValue;
  String? _downselectedValue;
  void initState() {
    setState(() {
      _upselectedValue = _valueList[3];
      _downselectedValue = _valueList[3];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 4,
            offset: Offset(0, -4),
          )
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.keyboard_double_arrow_down_rounded, size: 30,  color: Colors.black),
              onPressed: widget.clickZero,
            ),
            Padding(padding: EdgeInsets.all(4)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('상의 사이즈: '),
                Padding(padding: EdgeInsets.all(8)),
                DropdownButton(
                  value: _upselectedValue,
                  items: _valueList.map(
                    (e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      );
                    }
                  ).toList(),
                  onChanged: (value) {
                    setState(() {
                      _upselectedValue = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('하의 사이즈: '),
                Padding(padding: EdgeInsets.all(8)),
                DropdownButton(
                  value: _downselectedValue,
                  items: _valueList.map(
                    (e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      );
                    }
                  ).toList(),
                  onChanged: (value) {
                    setState(() {
                      _downselectedValue = value!;
                    });
                  },
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(8)),
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              height: 56,
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('상품 0개'),
                  Text('0 원')
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
          ],
        ),
      ),
    );
  }
}