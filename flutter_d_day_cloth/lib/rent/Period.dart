import 'package:flutter/material.dart';

import 'package:flutter_d_day_cloth/todownload.dart';

class ClickPeriodSet extends StatelessWidget {
  const ClickPeriodSet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 420),
            child: DatePick()
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


// class PeriodSet extends StatefulWidget {
//   const PeriodSet({super.key});

//   @override
//   State<PeriodSet> createState() => _PeriodSetState();
// }

// class _PeriodSetState extends State<PeriodSet> {
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         iconTheme: IconThemeData(color: Colors.black),
//       ),
//       body: ListView(
//         children: [
//           Container(
//             padding: EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(bottom: 16),
//                   child: Text('대여기간설정', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))
//                 ),
//                 Container(
//                   child: InkWell(
//                     child: Container(
//                       padding: EdgeInsets.all(16),
//                       width: double.infinity,
//                       height: 80,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         color: Colors.grey[200],
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text('대여일', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
//                           Text("yyyy.mm.dd", style: TextStyle(fontSize: 16, color: Colors.grey),)
//                         ],
//                       ),
//                     ),
//                     onTap: () {
//                       // Navigator.push(context, MaterialPageRoute(
//                       //   builder: (context) => ClickPeriodSet()
//                       // ));
//                     },
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.all(8)),
//                 Container(
//                   child: InkWell(
//                     child: Container(
//                       padding: EdgeInsets.all(16),
//                       width: double.infinity,
//                       height: 80,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         color: Colors.grey[200],
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text('반납일', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
//                           Text("yyyy.mm.dd", style: TextStyle(fontSize: 16, color: Colors.grey),),
//                         ],
//                       ),
//                     ),
//                     onTap: () {

//                     },
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class DatePick extends StatelessWidget {
  const DatePick({super.key});

  @override
  Widget build(BuildContext context) {
    return DateRangePickerDialog(
      firstDate: DateTime(2022),
      lastDate: DateTime(2090),
    );
  }
}