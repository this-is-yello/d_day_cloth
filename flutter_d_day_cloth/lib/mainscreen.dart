import 'package:flutter/material.dart';
import 'package:flutter_d_day_cloth/main.dart';
import 'package:flutter_d_day_cloth/promotionscreen.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:table_calendar/table_calendar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

        backgroundColor: Colors.white,

        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text('by 覺 렌탈센터', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_bag, size: 30, color: Colors.black),
              onPressed: () {
                
              },
            )
          ],
        ),

        body: TabBarView(
          children: [
            Center(
              child: Home(),
            ),
            Center(
              child: Search(),
            ),
            Center(
              child: Booking(),
            ),
            Center(
              child: Mypage(),
            )
          ],
        ),

        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 4,
                offset: Offset(0, -4), 
              )
            ],
            color: Colors.white,
          ),
          child: const TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Color(0xff205B48),
            labelColor: Color(0xff205B48),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(Icons.home, size: 30),
                text: '홈',
              ),
              Tab(
                icon: Icon(Icons.search, size: 30),
                text: '검색',

              ),
              Tab(
                icon: Icon(Icons.bookmark_outlined, size: 30),
                text: '예약내역',
              ),
              Tab(
                icon: Icon(Icons.account_circle, size: 30),
                text: '마이페이지',
              )
            ],
          )
        ),
      )
    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var mainColor = Color(0xff205B48);
  var blackColor = Color(0xff1E1E1E);
  var whiteColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 4,
                            offset: Offset(0, 4), 
                          )
                        ], 
                        color: whiteColor,
                      ),
                      
                      child: Center(child: Text('면접대여', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))),
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 4,
                            offset: Offset(0, 4), 
                          )
                        ], 
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
        Container(
          padding: EdgeInsets.all(16),
          child: Text('인기상품', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
        ),
        ListTile(
          leading: Container(
            width: 80,
            height: 80,
            color: Colors.black
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('김주현바이각', style: TextStyle(fontSize: 14, color: Colors.grey)),
              Text('[면접대여] 블랙 솔리드 슈트', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
              Text('50,000원', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))
            ],
          ),
          trailing: IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
          height: 1,
          width: double.infinity,
          color:Colors.grey[300],
        ),
        ListTile(
          leading: Container(
            width: 80,
            height: 80,
            color: Colors.grey
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('김주현바이각', style: TextStyle(fontSize: 14, color: Colors.grey)),
              Text('[면접대여] 그레이 솔리드 슈트', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
              Text('50,000원', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))
            ],
          ),
          trailing: IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
          height: 1,
          width: double.infinity,
          color:Colors.grey[300],
        ),
        ListTile(
          leading: Container(
            width: 80,
            height: 80,
            color: Colors.indigo[900],
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('김주현바이각', style: TextStyle(fontSize: 14, color: Colors.grey)),
              Text('[면접대여] 네이비 체크 슈트', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
              Text('50,000원', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))
            ],
          ),
          trailing: IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
          height: 1,
          width: double.infinity,
          color:Colors.grey[300],
        ),
      ],
    );
  }
}



// -------------------------------------- 검색 --------------------------------------------
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  // controller: inputSearch,
                  decoration: InputDecoration(
                    hintText: '검색어를 입력하세요.',
                    border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Color(0xff205B48))),
                    suffixIcon: Icon(Icons.search, color: Color(0xff205B48))
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        width: double.infinity,
                        child: Text('카테고리', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))
                      ),
                      Container(
                        child: Row(
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              child: InkWell(
                                child: Container(
                                  height: 40,
                                  child: Center(child: Text('자켓', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))),
                                ),
                                onTap: () {},
                              )
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              child: InkWell(
                                child: Container(
                                  height: 40,
                                  child: Center(child: Text('바지', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))),
                                ),
                                onTap: () {},
                              )
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              child: InkWell(
                                child: Container(
                                  height: 40,
                                  child: Center(child: Text('셔츠', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))),
                                ),
                                onTap: () {},
                              )
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 16),
                        child: Row(
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              child: InkWell(
                                child: Container(
                                  height: 40,
                                  child: Center(child: Text('조끼', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))),
                                ),
                                onTap: () {},
                              )
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              child: InkWell(
                                child: Container(
                                  height: 40,
                                  child: Center(child: Text('구두', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))),
                                ),
                                onTap: () {},
                              )
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              child: InkWell(
                                child: Container(
                                  height: 40,
                                  child: Center(child: Text('악세사리', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))),
                                ),
                                onTap: () {},
                              )
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        width: double.infinity,
                        child: Text('최근 검색어', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))
                      ),
                      Container(
                        child: ListTile(
                          leading: Icon(Icons.search),
                          title: InkWell(
                            child: Text('내 검색어는 비밀이라네!'),
                            onTap: () {},
                          ),
                          trailing: TextButton(
                            child: Text('삭제', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


// -------------------------------------- 예약내역 --------------------------------------------
class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('예약이다.')),
    );
  }
}


// -------------------------------------- 마이페이지 --------------------------------------------
class Mypage extends StatelessWidget {
  const Mypage({super.key});

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
// -------------------------------------- 캘린더 --------------------------------------------
class TableCalendarScreen extends StatelessWidget {
  const TableCalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TableCalendar(
        // locale: 'ko_KR',
        firstDay: DateTime.utc(1997, 9, 20),
        lastDay: DateTime.utc(2999, 3, 14),
        focusedDay: DateTime.now(),
        headerStyle: HeaderStyle(
          titleCentered: true,
          formatButtonVisible: false,
        ),
      ),
    );
  }
}