import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulturella/calender.dart';
// import 'package:kulturella/components';
import 'package:kulturella/components.dart';
import 'package:kulturella/menu.dart';
import 'package:kulturella/view/widget/home_page_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: pageIndex == 0
              ? homeBody(context)
              : pageIndex == 1
                  ? const CalenderScreen()
                  : pageIndex == 2
                      ? homeBody(context)
                      : pageIndex == 3
                          ? homeBody(context)
                          : homeBody(context),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(left: 11, right: 11, bottom: 17),
          height: 65.h,
          decoration: BoxDecoration(
              // color: Theme.of(context).highlightColor,
              color: Colors.red,
              borderRadius: BorderRadius.circular(35.r),
              border: Border.all(
                  width: 1, color: const Color.fromARGB(255, 209, 205, 191))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                child: Image(
                  image: const AssetImage(
                    'assets/Stroke 2.png',
                  ),
                  height: 26.08.h,
                  width: 25.w,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                child: Image(
                    image: const AssetImage('assets/Calendar.png'),
                    height: 26.08.h,
                    width: 25.w),
              ),
              Image(
                  image: const AssetImage('assets/new.png'),
                  height: 45.h,
                  width: 72.w),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                child: Image(
                    image: const AssetImage('assets/coolicon.png'),
                    height: 26.08.h,
                    width: 25.w),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                child: Image(
                    image: const AssetImage('assets/coolicon (1).png'),
                    height: 26.08.h,
                    width: 25.w),
              ),
            ],
          ),
        ));
  }

  Widget homeBody(context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(
            top: 20.h,
          ),
          child: Text(
            'KULTURELLA',
            style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto-Black'),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(
            top: 8.h,
          ),
          child: Text(
            'for creative ideás',
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'JosefinSans-Regular'),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: sdp(context, 15), vertical: sdp(context, 5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 220.h,
                child: Text('DISCOVER PROJECTS',
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Roboto-Black')),
              ),
              SizedBox(
                height: 26.08.h,
                width: 26.08.w,
                child: InkWell(
                    onTap: () {
                      setState(() {
                        pageIndex = 4;
                      });
                    },
                    child: Image.asset('assets/search.png')),
                //
              ),
              SizedBox(
                height: 36.h,
                width: 36.w,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MenuScreen()));
                  },
                  child: Image.asset(
                    'assets/wrr.png',
                  ),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              scrollimages(
                  images: const Image(
                      image: AssetImage('assets/KONFERANSIER1.png')),
                  context: context),
              scrollimages(
                  images:
                      const Image(image: AssetImage('assets/KONFERANSIER.png')),
                  context: context),
              scrollimages(
                  images: const Image(
                      image: AssetImage('assets/KONFERANSIER1.png')),
                  context: context),
              scrollimages(
                  images: const Image(
                      image: AssetImage('assets/KONFERANSIER2.png')),
                  context: context),
            ],
          ),
        ),
        //   SizedBox.expand(
        // child: pages[pageIndex],)
      ],
    );
  }
}
