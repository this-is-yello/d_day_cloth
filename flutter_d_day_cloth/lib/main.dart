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
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
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
      body:CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate((c,i) =>
              Container(color : Color(0xff3e3e3e)),
              childCount: 12,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 1개의 행에 항목을 3개씩
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1/1,
            ),
          ),
          SliverToBoxAdapter(child: Container(width: 500, height: 500,)),
        ],
      )
    );
  }
}