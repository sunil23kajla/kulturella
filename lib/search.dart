import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 45, left: 20),
              child: const Text(
                'Search',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ABeeZee-Regular'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 25),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 52.h,
              decoration: BoxDecoration(
                  color: const Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(23.r),
                  border: Border.all(
                      width: 1.w,
                      color: const Color.fromARGB(255, 16, 16, 16))),
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
                        hintText: 'Search projects or people',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
