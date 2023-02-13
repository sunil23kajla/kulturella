import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulturella/view/widget/calendar_widget.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 23, left: 20),
            child: const Text(
              'Activity calendar',
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ABeeZee-Regular'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 23),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 52.h,
            decoration: BoxDecoration(
                color: const Color(0xFFF6F6F6),
                borderRadius: BorderRadius.circular(23.r),
                border: Border.all(
                    width: 1.w, color: const Color.fromARGB(255, 16, 16, 16))),
            child: Row(
              children: [
                Image.asset(
                  'assets/Search.png',
                  height: 24.h,
                  width: 24.w,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: 200.h,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'arrangement molde',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30, left: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              '3 ACTIVITIES NEAR YOU',
              style: TextStyle(fontSize: 13, fontFamily: 'Roboto-Black'),
            ),
          ),
          Calender_Widget(
              images: const Image(image: AssetImage('assets/Rectangle.png')),
              title: 'APPLY FOR FUNDS',
              description:
                  "Vi deler ut kulturmidler i Molde!\nSok innen fristen 14.juni.",
              more: 'MORE OG ROMSDAL',
              demo: '',
              fly: 'FYLKESKOMM',
              name: '01.JUNUAR',
              context: context),
          Calender_Widget(
              images: const Image(image: AssetImage('assets/Rectangle1.png')),
              title: 'GRAFITTI WORKSHOP',
              description:
                  "Delta på grunnleggende kurs i\ngrafitti og spraymaling!",
              more: '',
              demo: '12. JUNI',
              fly: 'GALLERI OUI',
              name: 'kl. 20:00',
              context: context),
          Calender_Widget(
              images: const Image(image: AssetImage('assets/Rectangle2.png')),
              title: 'LAüGET',
              description:
                  "Endelig blir det konsert og vi\nkan danse og smile igjen :D",
              more: 'PLASSEN',
              demo: '12. JUNI',
              fly: 'KULTURHUS',
              name: 'kl. 20:00',
              context: context),
          // const SizedBox(
          //   height: 100,
          // )
        ],
      ),
    );
  }
}
