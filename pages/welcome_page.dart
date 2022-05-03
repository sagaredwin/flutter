import 'package:flutter/material.dart';
import 'package:medical/appcolors/colors.dart';
import 'package:medical/navi_bar/main_page.dart';
import 'package:medical/wigets/app_large_text.dart';
import 'package:medical/wigets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "1.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/" + images[index]),
                        fit: BoxFit.cover)),
                child: Container(
                  margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(
                            text: "Vritual Ecosystem",
                            color: Colors.green,
                          ),
                          AppText(
                            text: "Ecosystem",
                            color: Colors.black,
                            size: 30,
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 250,
                            child: AppText(
                              text:
                                  "Specialied Healthcare,on a single tech platfrom,simplifying access for anyone,anywhere",
                              color: AppColors.textColor2,
                              size: 14,
                            ),
                          ),
                          Wrap(spacing: 8, children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 20, top: 10, right: 10),
                              width: 150,
                              height: 260,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/2.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 30, right: 10),
                              width: 150,
                              height: 260,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/3.png"),
                                      fit: BoxFit.cover)),
                            ),
                          ]),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainPage()),
                              );
                            },
                            child: const Icon(Icons.arrow_right_alt_outlined),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const CircleBorder()),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(20)),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.blue), // <-- Button color
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                      (states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.red;
                                } // <-- Splash color
                              }),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
