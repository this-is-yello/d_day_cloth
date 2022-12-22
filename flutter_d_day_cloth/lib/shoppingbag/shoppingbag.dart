import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_d_day_cloth/todownload.dart';

class ClickShoppingBag extends StatelessWidget {
  const ClickShoppingBag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 420),
            child: ShoppingBag()
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

class ShoppingBag extends StatefulWidget {
  const ShoppingBag({super.key});

  @override
  State<ShoppingBag> createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {

  var mainColor = Color(0xff205B48);
  var blackColor = Color(0xff1E1E1E);
  var whiteColor = Colors.white;

  bool _checkProductAll = false;
  bool _checkProductOne = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(child: Text('장바구니', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700))),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Checkbox(
                              activeColor: mainColor,
                              checkColor: whiteColor,
                              value: _checkProductAll,
                              onChanged: (value) {
                                setState(() {
                                  _checkProductAll = true;
                                  // _checkProductAll = false;
                                });
                              },
                            ),
                            Text('전체선택', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                      InkWell(
                        child: Text('선택삭제', style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w700)),
                        onTap: () {},
                      ),
                    ],
                  )
                ),
                Padding(padding: EdgeInsets.all(4)),
                Container(
                  height:2,
                  width: double.infinity,
                  color:Colors.grey[300],
                ),
                Container(
                  padding: EdgeInsets.only(top: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                            activeColor: mainColor,
                            checkColor: whiteColor,
                            value: _checkProductOne,
                            onChanged: (value) {
                              setState(() {
                                _checkProductOne = true;
                                // _checkProductAll = false;
                              });
                            },
                          ),
                          InkWell(
                            child: Text('삭제', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                            onTap: () {},
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('[면접대여] 블랙 솔리드 슈트', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                              Text('50,000원', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                              Text('옵션: 자켓L', style: TextStyle(fontSize: 14, color: Colors.grey)),
                              Padding(padding: EdgeInsets.all(4)),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: mainColor,
                                  // minimumSize: Size(double.infinity, 50)
                                ),
                                child: Text('예약하기'),
                                onPressed: () {},
                              )
                            ],
                          ),
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomSheet: BottomSheet(),
    );
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 4,
            offset: Offset(0, -4), 
          )
        ], 
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('선택 상품 수', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
              Text('총 0개', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('총 금액', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
              Text('0 원', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))
            ],
          ),
          Padding(padding: EdgeInsets.all(16)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff205B48),
              minimumSize: Size(double.infinity, 50)
            ),
            child: Text('예약하기'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
          