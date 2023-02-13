import 'package:flutter/material.dart';
// import 'package:kulturella/components';
import 'package:kulturella/components.dart';
import 'package:kulturella/settings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: sdp(context, 10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_rounded),
              ),
              Center(
                child: Text(
                  "KULTURELLA",
                  style: TextStyle(
                      fontSize: sdp(context, 30), fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: sdp(context, 20),
              ),
              Text(
                "Login",
                style: TextStyle(fontSize: sdp(context, 22)),
              ),
              SizedBox(
                height: sdp(context, 20),
              ),
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => AboutScreen()));
                  },
                  style: OutlinedButton.styleFrom(
                      // foregroundColor: Colors.black,
                      side: const BorderSide(color: Colors.black, width: 2)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: sdp(context, 10),
                        horizontal: sdp(context, 5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "LOGIN WITH APPLE",
                          style: TextStyle(
                              fontSize: sdp(context, 12), color: Colors.black),
                        ),
                        Image.asset("./assets/appleicon.png")
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sdp(context, 10),
              ),
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => AboutScreen()));
                  },
                  style: OutlinedButton.styleFrom(
                      // foregroundColor: Colors.black,
                      side: const BorderSide(color: Colors.black, width: 2)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: sdp(context, 5), horizontal: sdp(context, 5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "LOGIN WITH GOOGLE",
                          style: TextStyle(
                              fontSize: sdp(context, 12), color: Colors.black),
                        ),
                        Image.asset("./assets/googleicon.png")
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sdp(context, 10),
              ),
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsScreen()));
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black,
                      // foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.black, width: 2)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: sdp(context, 12),
                        horizontal: sdp(context, 5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "NEW USER",
                            style: TextStyle(
                                fontSize: sdp(context, 12),
                                color: Colors.white),
                          ),
                        ),
                      ],
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
