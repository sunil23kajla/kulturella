import 'package:flutter/material.dart';
// import 'package:kulturella/components';
import 'package:kulturella/components.dart';
import 'package:kulturella/login.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("./assets/about.png"),
            fit: BoxFit.cover,
            colorFilter:
                ColorFilter.mode(Colors.transparent, BlendMode.hardLight),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: sdp(context, 20), horizontal: sdp(context, 20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: sdp(context, 40),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                  iconSize: sdp(context, 30),
                ),
              ),
              SizedBox(
                height: sdp(context, 40),
              ),
              Text(
                "What is KULTURELLA?",
                style: TextStyle(
                    fontSize: sdp(context, 20), fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: sdp(context, 10),
              ),
              Text(
                "Many artists and creative people are dependent on discovering new projects to grow their bussiness. \n\nThis is just one of the challenging tasks they encounter in their line of work.\n\nWith KULTURELLA we aim to make creative projects avaliable for more people and at the same time making networking and colaborations easier.",
                style: TextStyle(fontSize: sdp(context, 15)),
              ),
              SizedBox(
                height: sdp(context, 150),
              ),
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.3),
                      side: const BorderSide(color: Colors.black, width: 2)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: sdp(context, 10),
                        horizontal: sdp(context, 70)),
                    child: Text(
                      "START",
                      style: TextStyle(
                          fontSize: sdp(context, 15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
