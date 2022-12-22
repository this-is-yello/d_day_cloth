import 'package:flutter/material.dart';
import 'package:flutter_d_day_cloth/mypage/calender.dart';

class UserMypage extends StatelessWidget {
  const UserMypage({super.key});

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
            padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Container(
              width: double.infinity,
              height: 120,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('내 포인트', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                          Padding(padding: EdgeInsets.all(4)),
                          Text('0 P', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                        ]
                      ),
                    ),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context) => PromotionScreen()
                      // ));
                    },
                  ),
                  Container(
                    height: 70,
                    width: 2,
                    color:Colors.grey[300],
                  ),
                  InkWell(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('예약내역', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                          Padding(padding: EdgeInsets.all(4)),
                          Text('0건', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                        ]
                      ),
                    ),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context) => PromotionScreen()
                      // ));
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: InkWell(
              child: Container(
                height: 70,
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
                child: Center(child: Text('마이 사이즈', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))),
              ),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) => PromotionScreen()
                // ));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Text('내 대여 일정', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
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
          )
        ],
      ),
    );
  }
}