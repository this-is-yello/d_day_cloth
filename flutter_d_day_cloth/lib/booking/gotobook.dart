import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

import 'package:flutter_d_day_cloth/booking/bookdetail.dart';
import 'package:flutter_d_day_cloth/todownload.dart';
import 'package:flutter_d_day_cloth/rent/Period.dart';
import 'package:flutter_d_day_cloth/booking/bookcomplete.dart';

class ClickGoToBook extends StatelessWidget {
  const ClickGoToBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 420),
            child: GoToBook()
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

class GoToBook extends StatefulWidget {
  const GoToBook({super.key});

  @override
  State<GoToBook> createState() => _GoToBookState();
}

class _GoToBookState extends State<GoToBook> {

  var startDate;
  var endDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Builder(
        builder: (context) {
          return ListView(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                        color: Colors.grey,
                      )
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('[대여종류] 상품이름', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                          Padding(padding: EdgeInsets.all(2)),
                          Text('yyyy.mm.dd - yyyy.mm.dd', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text('방문상담일 설정', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                    Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey[200],
                            ),
                            child: InkWell(
                              child: Center(child: Text('날짜:' + ' ' + 'yy.mm.dd(d)', style: TextStyle(fontSize: 18))),
                              onTap: () {
                                DatePicker.showDatePicker(
                                  context,
                                  showTitleActions: true,
                                  minTime: DateTime(2022, 3, 2),
                                  maxTime: DateTime(2099, 12, 31),
                                  onChanged: (data) {print('change $data');},
                                  onConfirm: (data) {print('confirm $data');},
                                  currentTime: DateTime.now(),
                                  locale: LocaleType.ko,
                                  theme: DatePickerTheme(
                                    itemStyle: TextStyle(
                                      color: Color(0xff205B48),
                                      fontSize: 20
                                    ),
                                    doneStyle: TextStyle(
                                      color: Color(0xff205B48),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700
                                    )
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8)),
                        Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey[200],
                            ),
                            child: InkWell(
                              child: Center(child: Text('시간:' + ' ' + '오전 11:00', style: TextStyle(fontSize: 18))),
                              onTap: () {
                                DatePicker.showTime12hPicker(
                                  context,
                                  // showTitleActions: true,
                                  onChanged: (data) {print('change $data');},
                                  onConfirm: (data) {print('confirm $data');},
                                  // currentTime: DateTime(12, 00),
                                  locale: LocaleType.ko,
                                  theme: DatePickerTheme(
                                    itemStyle: TextStyle(
                                      color: Color(0xff205B48),
                                      fontSize: 20
                                    ),
                                    doneStyle: TextStyle(
                                      color: Color(0xff205B48),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700
                                    )
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                child: Text('대여기간 설정', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
              ),
              Container(
                child: InkWell(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('대여기간 설정', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                        Text("yyyy.mm.dd - yyyy.mm.dd", style: TextStyle(fontSize: 16, color: Colors.grey))
                      ],
                    ),
                  ),
                  onTap: () {
                    showCalendarDatePicker2Dialog(
                      context: context,
                      config: CalendarDatePicker2WithActionButtonsConfig(
                        calendarType: CalendarDatePicker2Type.range,
                      ),
                      dialogSize: const Size(325, 400),
                      // initialValue: _dialogCalendarPickerValue,
                      borderRadius: BorderRadius.circular(15),
                      
                    );
                  },
                ),
              ),
            ],
          );
        }
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: InkWell(
          child: Container(
            margin: EdgeInsets.all(8),
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xff205B48),
            ),
            child: Center(child: Text('예약신청', style: TextStyle(color: Colors.white, fontSize: 16))),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ClickBookComplete()));
          },
        ),
      ),
    );
  }
}