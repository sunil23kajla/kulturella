import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulturella/APPLICATION.dart';
import 'package:kulturella/components.dart';
import 'package:kulturella/ovr_project.dart';

Widget scrollimages({required Image images, required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.only(left: 6, right: 5),
    child: Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 532.h,
      width: 330.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // ignore: unnecessary_new
          image: new DecorationImage(
            image: images.image,
            fit: BoxFit.fill,
          )),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const OvrProjectScreen()));
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 100.w,
                        child: Text(
                          'EVENT',
                          style: TextStyle(
                              fontSize: sdp(
                                context,
                                13.sp,
                              ),
                              color: Colors.white,
                              fontFamily: 'Roboto-Black'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 3.h),
                        width: 110.w,
                        child: Text(
                          ' ART & MUSIC',
                          style: TextStyle(
                              fontSize: sdp(
                                context,
                                10.sp,
                              ),
                              color: const Color(0xFFFFFFFF),
                              fontFamily: 'Roboto-Thin.ttf',
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'TROLLFESTIVAL',
                          style: TextStyle(
                              fontSize: sdp(
                                context,
                                13.sp,
                              ),
                              color: Colors.white,
                              fontFamily: 'Roboto-Black'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'Henrik Sæther',
                          style: TextStyle(
                              fontSize: sdp(
                                context,
                                10.sp,
                              ),
                              color: Colors.white,
                              fontFamily: 'Roboto-Thin.ttfk'),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const APPLICATIONSCREEN()));
                    },
                    child: Container(
                        width: 28.w,
                        height: 28.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                              image: AssetImage("assets/KONFERANSIER1.png"),
                              fit: BoxFit.fill,
                            ))),
                  ),
                ],
              ),
              Container(
                width: 92.w,
                height: 92.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/Login.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'LOOKING FOR ARTISTS',
                      style: TextStyle(
                          fontSize: sdp(
                            context,
                            20.sp,
                          ),
                          color: Colors.white,
                          fontFamily: 'Roboto-Black'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'We are looking for performers and\nartists for our Trollfestival!',
                      style: TextStyle(
                          fontSize: sdp(
                            context,
                            10.sp,
                          ),
                          color: Colors.white,
                          fontFamily: 'Roboto-Thin.ttfk'),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5.h),
                        width: 28.54.w,
                        height: 32.14.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/Delete.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/X.png',
                            height: 18.h,
                            width: 9.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Text(
                              'Joakim Riise',
                              style: TextStyle(
                                fontSize: sdp(
                                  context,
                                  9.sp,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '@jokke.jpg',
                              style: TextStyle(
                                  fontSize: sdp(
                                    context,
                                    8.sp,
                                  ),
                                  color: Colors.white,
                                  fontFamily: 'Roboto-Thin.ttf'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: 28.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              image: const DecorationImage(
                                image: AssetImage("assets/KONFERANSIER1.png"),
                                fit: BoxFit.fill,
                              ))),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
