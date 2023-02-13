import 'package:flutter/material.dart';
// import 'package:kulturella/components';
import 'package:kulturella/components.dart';
import 'package:kulturella/homeScreen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double _currentSliderValue = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: sdp(context, 20)),
                child: ListView(
                  children: [
                    SizedBox(
                      height: sdp(context, 10),
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
                      height: sdp(context, 10),
                    ),
                    Text(
                      "YOUR CULTURE",
                      style: TextStyle(
                          fontSize: sdp(context, 30),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "CHOOSE YOUR PREFERANCES",
                      style: TextStyle(
                          fontSize: sdp(context, 13),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: sdp(context, 15),
                    ),
                    Row(
                      children: [
                        Image.asset("./assets/bussinessicon.png"),
                        SizedBox(
                          width: sdp(context, 10),
                        ),
                        Text(
                          "BUSSINESS",
                          style: TextStyle(
                            fontSize: sdp(context, 13),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: sdp(context, 15),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          prefCard(
                            icon: Icons.person_outline,
                            label: "CREATIVE PERSON",
                            context: context,
                          ),
                          prefCard(
                            icon: Icons.person_outline,
                            label: "ORGANISATION",
                            context: context,
                          ),
                          prefCard(
                            icon: Icons.person_outline,
                            label: "BUSSINESS",
                            context: context,
                          ),
                          prefCard(
                            icon: Icons.person_outline,
                            label: "SCHOOL/EDUCATION",
                            context: context,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: sdp(context, 15),
                    ),
                    Row(
                      children: [
                        Image.asset("./assets/cultureicon.png"),
                        SizedBox(
                          width: sdp(context, 10),
                        ),
                        Text(
                          "CULTURE FIELD",
                          style: TextStyle(
                            fontSize: sdp(context, 13),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: sdp(context, 15),
                    ),
                    Wrap(
                      runSpacing: 10,
                      children: [
                        prefCard(
                          icon: Icons.library_music_outlined,
                          label: "MUSIC",
                          context: context,
                        ),
                        prefCard(
                          icon: Icons.color_lens_outlined,
                          label: "PAINTING/GRAPHICS",
                          context: context,
                        ),
                        prefCard(
                          icon: Icons.photo_camera_outlined,
                          label: "PHOTO",
                          context: context,
                        ),
                        prefCard(
                          icon: Icons.theater_comedy_outlined,
                          label: "THEATER",
                          context: context,
                        ),
                        prefCard(
                          icon: Icons.accessibility,
                          label: "DANCE",
                          context: context,
                        ),
                        prefCard(
                          icon: Icons.video_camera_back_outlined,
                          label: "VIDEO",
                          context: context,
                        ),
                        prefCard(
                          icon: Icons.mic,
                          label: "STORY",
                          context: context,
                        ),
                        prefCard(
                          icon: Icons.accessibility,
                          label: "DANCE",
                          context: context,
                        ),
                        prefCard(
                          icon: Icons.video_camera_back_outlined,
                          label: "VIDEO",
                          context: context,
                        ),
                        prefCard(
                          icon: Icons.mic,
                          label: "STORY",
                          context: context,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: sdp(context, 30),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: sdp(context, 20), vertical: sdp(context, 20)),
              height: 200,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.assistant_navigation,
                        size: sdp(context, 25),
                      ),
                      SizedBox(
                        width: sdp(context, 10),
                      ),
                      Text(
                        "ACTIVE RADIUS",
                        style: TextStyle(fontSize: sdp(context, 12)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Slider(
                          value: _currentSliderValue,
                          max: 500,
                          divisions: 5,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        ),
                      ),
                      Text(
                        "${_currentSliderValue.toInt()} KM",
                        style: TextStyle(
                            fontSize: sdp(context, 13),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Center(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          // foregroundColor: Colors.black,
                          side:
                              const BorderSide(color: Colors.black, width: 2)),
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
                                "SAVE",
                                style: TextStyle(
                                    fontSize: sdp(context, 12),
                                    color: Colors.black),
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
          ],
        ),
      ),
    );
  }

  Widget prefCard(
      {required IconData icon,
      required String label,
      required BuildContext context}) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: sdp(context, 40),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: sdp(context, 9)),
          )
        ],
      ),
    );
  }
}
