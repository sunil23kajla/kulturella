import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Calender_Widget(
    {required Image images,
    required title,
    required description,
    required more,
    required demo,
    required fly,
    required name,
    required BuildContext context}) {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
        child: Container(
          // padding: const EdgeInsets.only(top: 25, left: 19, right: 10),
          height: 345.h,
          width: 345.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                image: images.image,
                fit: BoxFit.fill,
              )),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                  left: 15,
                  top: 23,
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 30,
                      fontFamily: 'Roboto-Black',
                      color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 18, top: 6),
                child: Text(
                  description,
                  style: const TextStyle(
                      fontSize: 16,
                      wordSpacing: 2,
                      fontFamily: 'Roboto-Black',
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 180.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(
                      left: 11,
                    ),
                    child: Text(
                      more,
                      style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto-Black',
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 11, right: 6),
                    child: Text(
                      demo,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(
                      left: 11,
                    ),
                    child: Text(
                      fly,
                      style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto-Black',
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 11, right: 6),
                    child: Text(
                      name,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
