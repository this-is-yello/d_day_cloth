import 'package:flutter/material.dart';
import 'package:flutter_d_day_cloth/booking/bookmanegement.dart';
import 'package:flutter_d_day_cloth/mypage/calender.dart';
import 'package:flutter_d_day_cloth/mypage/membermanegement.dart';
import 'package:flutter_d_day_cloth/product/productmanegement.dart';
import 'package:flutter_d_day_cloth/inquirymanegement.dart';

class AdminMypage extends StatelessWidget {
  const AdminMypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text('마이페이지', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.photo, size: 50),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('바이각', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                  Text('010-1212-3535', style: TextStyle(color: Colors.grey))
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.keyboard_arrow_right, size: 30),
                onPressed: () {},
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: InkWell(
                        child: Container(
                          height: 56,
                          child: Center(
                              child: Text('회원관리', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))),
                        ),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => ClickMember()));
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(2)),
                    Flexible(
                      fit: FlexFit.tight,
                      child: InkWell(
                        child: Container(
                          height: 56,
                          child: Center(child: Text('예약관리', style: TextStyle(fontSize: 18,  fontWeight: FontWeight.w700))),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ClickBookManege()));
                        },
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(2)),
                Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: InkWell(
                        child: Container(
                          height: 56,
                          child: Center(child: Text('문의관리', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ClickInquiryManege()));
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(2)),
                    Flexible(
                      fit: FlexFit.tight,
                      child: InkWell(
                        child: Container(
                          height: 56,
                          child: Center(child: Text('제품관리', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ClickProductManege()));
                        },
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(2)),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    height: 56,
                    child: Center(child: Text('바코드로 제품검색', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))),
                  ),
                  onTap: () {},
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  child: Text('관리자 일정', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Container(
                    width: double.infinity,
                    height: 400,
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
                    child: TableCalendarScreen(),
                  ),
                ),
              ]
            ),
          )
        ],
      ),
    );
  }
}
