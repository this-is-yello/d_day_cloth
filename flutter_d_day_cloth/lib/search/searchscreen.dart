import 'package:flutter/material.dart';

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