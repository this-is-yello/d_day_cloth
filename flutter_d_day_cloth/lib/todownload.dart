import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ToDownload extends StatelessWidget {
  const ToDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('다운로드 유도하라 이 말이야!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))
            )
          ],
        ),
      ),
    );
  }
}