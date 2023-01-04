import 'package:flutter/material.dart';

import 'package:flutter_d_day_cloth/todownload.dart';

class ClickBookDetail extends StatelessWidget {
  const ClickBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 420),
            child: BookDetail()
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

class BookDetail extends StatelessWidget {
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('예약상세', style: TextStyle(color: Colors.black, ),)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text('예약내역 상세', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          ),
          Column(
            verticalDirection: VerticalDirection.up,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      offset: Offset(0, 4), 
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text('예약번호: ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                        Padding(padding: EdgeInsets.all(2)),
                        Container(
                          child: Text('2022120601010301', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Text('예약자 정보', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                        Padding(padding: EdgeInsets.all(4)),
                        Container(
                          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('이름 : '),
                                  Text('이름입니다')
                                ]
                              ),
                              Padding(padding: EdgeInsets.all(2)),
                              Row(
                                children: [
                                  Text('전화번호 : '),
                                  Text('010입니다')
                                ]
                              ),
                              Padding(padding: EdgeInsets.all(2)),
                              Row(
                                children: [
                                  Text('이메일 : '),
                                  Text('@네이버입니다')
                                ]
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Text('예약정보', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                        Padding(padding: EdgeInsets.all(4)),
                        Container(
                          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('상품명 : ', style: TextStyle(fontWeight: FontWeight.w700)),
                                  Column(
                                    children: [
                                      Text('[대여종류]상품명'),
                                      Text('[대여종류]상품명'),
                                      Text('[대여종류]상품명'),
                                    ],
                                  )
                                ]
                              ),
                              Padding(padding: EdgeInsets.all(4)),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('방문일자 : ', style: TextStyle(fontWeight: FontWeight.w700)),
                                  Column(
                                    children: [
                                      Text('yyyy.mm.dd(d)'),
                                    ],
                                  )
                                ]
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('예상금액 : ', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                                Text('50000원', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))
                              ]
                            ),
                            Text('※매장에서 결제하며, 상담 후 가격은 변동될 수 있습니다.', style: TextStyle(fontSize: 12))
                          ],
                        ),
                      ),
                    Padding(padding: EdgeInsets.all(8)),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Text('예약변경', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
                            onPressed: () {},
                          ),
                          TextButton(
                            child: Text('예약취소', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
                            onPressed: () {},
                          )
                        ],
                      )
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                        color: Colors.grey,
                      )
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('[대여종류] 상품이름', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                          Padding(padding: EdgeInsets.all(2)),
                          Text('yyyy.mm.dd - yyyy.mm.dd', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

