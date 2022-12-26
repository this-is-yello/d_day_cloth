import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_d_day_cloth/todownload.dart';
import 'package:flutter_d_day_cloth/inquiry.dart';
import 'package:flutter_d_day_cloth/shoppingbag/shoppingbag.dart';

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
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: InkWell(
          child: Container(
            margin: EdgeInsets.all(8),
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xff205B48),
            ),
            child: Center(child: Text('예약하기', style: TextStyle(color: Colors.white, fontSize: 16))),
          ),
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 300,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 1,
                                child: IconButton(
                                  icon: Icon(Icons.shopping_bag_outlined, size: 30,),
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
                                )
                              ),
                              Padding(padding: EdgeInsets.all(1)),
                              Flexible(
                                flex: 9,
                                child: InkWell(
                                  child: Container(
                                    height: 56,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff205B48),
                                    ),
                                    child: Center(child: Text('예약하기', style: TextStyle(color: Colors.white, fontSize: 16))),
                                  ),
                                  onTap: () {}
                                )
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              backgroundColor: Colors.transparent,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.headset_mic_outlined, size: 30),
        backgroundColor: Color(0xff205B48),
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => ClickInquiry()),
          );
        }
      ),
    );
  }
}