import 'package:flutter/material.dart';
import 'package:medical/paitent_profile.dart';
import 'package:medical/wigets/app_large_text.dart';
import 'package:medical/wigets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //app bar container
          Container(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Row(children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(1),
                    image: const DecorationImage(
                        image: AssetImage("assets/102.png"), fit: BoxFit.cover),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: AppText(
                        text: "Welcome back",
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 0, bottom: 20),
                      child: AppLargeText(
                        text: "Sagar",
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 55,
                    left: 147,
                    bottom: 70,
                  ),
                  child: const Icon(Icons.menu, size: 30, color: Colors.black),
                ),
              ])),
          Container(
            //2nd  container for up cons header
            margin: const EdgeInsets.all(20),
            child: Row(
              children: [
                const Text(
                  'Upcoming Consultation ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Expanded(child: Container()),
                const Text(
                  '→',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
              //box conatiner with image
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 180,
              width: double.maxFinite,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 150,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey,
                        image: const DecorationImage(
                            image: AssetImage("assets/3.png"),
                            fit: BoxFit.cover),
                      ),
                    );
                  })),
          Container(
            //3rd container for pp header
            margin: const EdgeInsets.all(20),
            child: Row(
              children: [
                const Text(
                  'Paitent profile',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Expanded(child: Container()),
                const Text(
                  '→',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
              //  add symbol  & profile icons
              margin: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PaitentProfilePage()));
                          },
                          icon: const Icon(
                            Icons.add,
                          )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.green,
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.withOpacity(1),
                        image: const DecorationImage(
                            image: AssetImage("assets/100.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.withOpacity(1),
                        image: const DecorationImage(
                            image: AssetImage("assets/101.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.withOpacity(1),
                        image: const DecorationImage(
                            image: AssetImage("assets/102.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.withOpacity(1),
                        image: const DecorationImage(
                            image: AssetImage("assets/103.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.withOpacity(1),
                        image: const DecorationImage(
                            image: AssetImage("assets/104.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ])),
          SizedBox(
            //tab bar
            height: 15,
          ),
          Container(
            width: 450,
            height: 50,
            padding: const EdgeInsets.only(top: 10, left: 80),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(50)),
                    tabs: const [
                      Tab(text: 'Last enquries'),
                      Tab(text: 'Reports')
                    ]),
              ),
            ),
          ),
          SizedBox(
              height: 100,
              child: TabBarView(controller: _tabController, children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      //main box
                      height: 1,
                      width: 1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            //green line
                            width: 5,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(

                                //circle shape
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.withOpacity(1),
                                  image: const DecorationImage(
                                      image: AssetImage("assets/104.png"),
                                      fit: BoxFit.cover),
                                )),
                          ),
                          Container(
                            //doctor name
                            child: Column(children: [
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 5, top: 20, right: 15),
                                child: AppText(
                                  text: "hinata",
                                  color: Colors.black,
                                  size: 15,
                                ),
                              ),
                              Container(
                                //jobs name
                                padding:
                                    const EdgeInsets.only(left: 15, top: 10),
                                child: AppLargeText(
                                  text: "video consultor",
                                  color: Colors.black,
                                  size: 10,
                                ),
                              ),
                            ]),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  // tab bar 2
                  height: 100,
                  child: (Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        height: 1,
                        width: 1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Container(
                              //green line
                              width: 5,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                  //circle shape
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.grey.withOpacity(1),
                                    image: const DecorationImage(
                                        image: AssetImage("assets/103.png"),
                                        fit: BoxFit.cover),
                                  )),
                            ),
                            Container(
                              //doctor name
                              child: Column(children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 5, top: 20, right: 15),
                                  child: AppText(
                                    text: "Ayaka",
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  //jobs name
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 10),
                                  child: AppLargeText(
                                    text: "video consultor",
                                    color: Colors.black,
                                    size: 10,
                                  ),
                                ),
                              ]),
                            )
                          ],
                        )),
                  )),
                )
              ]))
        ])));
  }
}
