import 'package:flutter/material.dart';

import 'package:flutter_d_day_cloth/todownload.dart';

class ClickBookManege extends StatelessWidget {
  const ClickBookManege({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 420),
            child: BookMangement()
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


class BookMangement extends StatelessWidget {
  const BookMangement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(child: Text('예약관리', style: TextStyle(color: Colors.black))),
      ),
      body: CustomScrollView(      
        slivers: [
          SliverAppBar(
            elevation: 0,
            pinned: true,
            floating: true,
            centerTitle: true,
            automaticallyImplyLeading: false,
            expandedHeight: 200,
            toolbarHeight: 200,
            backgroundColor: Colors.white,
            title: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text('예약관리', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700)),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(bottom: 16),
                  child: TextField(
                    // controller: inputSearch,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Color(0xff205B48)),
                      hintText: '예약자의 이름을 입력하세요.',
                      border: OutlineInputBorder(borderSide: BorderSide(width: 1), borderRadius: BorderRadius.circular(50)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Color(0xff205B48)), borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 1
                                )
                              )
                            ),
                            height: 50,
                            child: Center(child: Text('예약자', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700)))
                          ),
                          onTap: () {},
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.grey,
                                width: 1
                              )
                            )
                          ),
                          height: 50,
                          child: Center(child: Text('전화번호', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700)))
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: InkWell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('방문일정', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700)))
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => InkWell(
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Container(
                          height: 40,
                          child: Center(child: Text('이름', style: TextStyle(fontSize: 13),))
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          height: 40,
                          child: Center(child: Text('010-0000-0000', style: TextStyle(fontSize: 13),))
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          height: 40,
                          child: Center(child: Text('22.12.13(화) 오전11:00', style: TextStyle(fontSize: 13),))
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
              childCount: 50
            )
          )
        ]
      )
    );
  }
}