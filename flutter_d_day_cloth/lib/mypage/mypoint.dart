import 'package:flutter/material.dart';

import 'package:flutter_d_day_cloth/todownload.dart';

class ClickMyPoint extends StatelessWidget {
  const ClickMyPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 420),
            child: MyPointScreen()
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

class MyPointScreen extends StatelessWidget {
  const MyPointScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Center(child: Text('내 포인트', style: TextStyle(color: Colors.black))),
        ),
        body: CustomScrollView(slivers: [
          SliverAppBar(
            elevation: 0,
            pinned: true,
            floating: true,
            centerTitle: true,
            automaticallyImplyLeading: false,
            expandedHeight: 160,
            toolbarHeight: 160,
            backgroundColor: Colors.white,
            title: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey, width: 1))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('내 포인트', style: TextStyle(color: Colors.black, fontSize: 24,  fontWeight: FontWeight.w700)),
                      Text('0P', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700))
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [
                    Flexible(
                      flex: 3,
                      child: Container(
                        height: 40,
                        child: Center(child: Text('적립',style: TextStyle(fontSize: 13)))
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Container(
                        height: 40,
                        child: Center( child: Text('50000P', style: TextStyle(fontSize: 13)))
                      ),
                    ),
                  ],
                ),
              ),
            childCount: 8
            )
          ),
        ]
      )
    );
  }
}
