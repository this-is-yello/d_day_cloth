import 'package:flutter/material.dart';

import 'package:flutter_d_day_cloth/todownload.dart';
import 'package:flutter_d_day_cloth/tabbarview/bookhistory.dart';
import 'package:flutter_d_day_cloth/promotionscreen.dart';
import 'package:flutter_d_day_cloth/booking/bookdetail.dart';

class ClickBookComplete extends StatelessWidget {
  const ClickBookComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 420),
            child: Bookcomplete()
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

class Bookcomplete extends StatelessWidget {
  const Bookcomplete({super.key});

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
          // AlertDialog(
          //   title: Text('예약신청완료'),
          //   content: Column(
          //     children: [
          //       Text('예약이 완료되었습니다.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          //       Text('방문일자는' + ' ' + 'yyyy.mm.dd' + '입니다.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))
          //     ],
          //   ),
          //   actions: [
          //     TextButton(
          //       child: Text('홈으로'),
          //       onPressed: () {
          //         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => WebMain()), (route) => false);
          //       },
          //     ),
          //     TextButton(
          //       child: Text('예약내역조회'),
          //       onPressed: () {
          //         Navigator.push(context, MaterialPageRoute(builder: (context) => ClickBookDetail()));
          //       },
          //     ),
          //   ],
          // )
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('예약이 완료되었습니다.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                    Text('방문일자는' + ' ' + 'yyyy.mm.dd' + '입니다.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))
                  ],
                )
              )
            ],
          ),

        ],
      ),
    );
  }
}