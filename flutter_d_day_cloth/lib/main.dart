import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_d_day_cloth/promotionscreen.dart';
import 'package:flutter_d_day_cloth/manegement/membermanegement.dart';
import 'package:flutter_d_day_cloth/booking/gotobook.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_d_day_cloth/mypage/givepoint.dart';
import 'package:flutter_d_day_cloth/manegement/bookmanegement.dart';
import 'package:flutter_d_day_cloth/manegement/productmanegement.dart';
import 'package:flutter_d_day_cloth/manegement/inquirymanegement.dart';
import 'package:flutter_d_day_cloth/login/login.dart';

void main() {
  runApp(MaterialApp(
    title: '바이각 슈트 렌탈센터',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Lineseed',
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff205B48),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    ),
    home: PromotionScreen(),
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
    ],
    supportedLocales: [
      const Locale('en', 'US'),
      const Locale('ko', 'KO'),
    ],
  ));
}
