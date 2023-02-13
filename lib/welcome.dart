import 'package:flutter/material.dart';
import 'package:kulturella/about.dart';
import 'package:kulturella/components.dart';
// import 'package:kulturella/components';
import 'package:kulturella/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage("./assets/welcome.png"),
              fit: BoxFit.cover,
              opacity: 0.8,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: sdp(context, 70),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sdp(context, 14)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Joakim Riise",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: sdp(context, 9),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "@jokke.jpg",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: sdp(context, 8),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage("./assets/avatar.png"),
                    radius: 21,
                  )
                ],
              ),
            ),
            SizedBox(
              height: sdp(context, 150),
            ),
            Text(
              "KULTURELLA",
              style: TextStyle(
                  fontSize: sdp(context, 35),
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "for creative ideas",
              style: TextStyle(fontSize: sdp(context, 18), color: Colors.white),
            ),
            SizedBox(
              height: sdp(context, 50),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  side: const BorderSide(color: Colors.white, width: 2)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: sdp(context, 10), horizontal: sdp(context, 60)),
                child: Text(
                  "START",
                  style: TextStyle(
                      fontSize: sdp(context, 15), color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: sdp(context, 15),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutScreen()));
              },
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  side: const BorderSide(color: Colors.white, width: 2)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: sdp(context, 10), horizontal: sdp(context, 5)),
                child: Text(
                  "WHAT IS KULTURELLA?",
                  style: TextStyle(
                      fontSize: sdp(context, 15), color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
