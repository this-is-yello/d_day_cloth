import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(
          child: Text('홍보문구입니다.')
        ),
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          minimumSize: Size(200, 80),
        ),
        child: Text('대여하러가자', style: TextStyle(color: Colors.white)),
        onPressed: (() {
          Navigator.push(context,MaterialPageRoute(
            builder: (context) => Row(
              // width - 1040
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 500),
                  child: HomeScreen()
                ),
                Padding(padding: EdgeInsets.all(20)),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 500),
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ));
        }),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Flexible(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text('면접대여'))
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                      }
                    ),
                  ),
                  flex: 5
                ),
                Padding(padding: EdgeInsets.all(8)),
                Flexible(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text('예복대여'))
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                      }
                    ),
                  ),
                  flex: 5
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15)
              ),
            ),
            flex: 10,
          ),
        ],
      ),
    );
  }
}


// CustomScrollView(
//   slivers: [
//     SliverPadding(
//       padding: EdgeInsets.symmetric(horizontal: 16),
//     ),
//     SliverGrid(
//       delegate: SliverChildBuilderDelegate((c,i) =>
//         Container(color : Color(0xff3e3e3e)),
//         childCount: 2,
//       ),
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//         childAspectRatio: 1/1,
//       ),
//     ),
//     SliverToBoxAdapter(
//       child: Container(
//         width: 500, height: 500
//       )
//     ),
//   ],
// )