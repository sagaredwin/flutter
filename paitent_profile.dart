import 'package:flutter/material.dart';

class PaitentProfilePage extends StatefulWidget {
  const PaitentProfilePage({Key? key}) : super(key: key);

  @override
  _PaitentProfilePageState createState() => _PaitentProfilePageState();
}

class _PaitentProfilePageState extends State<PaitentProfilePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 1, vsync: this);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            //app bar
            margin: const EdgeInsets.all(20),
            child: Row(
              children: [
                const Text(
                  '→',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Expanded(child: Container()),
                const Padding(
                  padding: EdgeInsets.only(right: 180),
                  child: Text(
                    'Paitent Profile ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //user profile 1st box
          Container(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Column(
                children: [
                  Container(
                      width: 450,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.lightBlue[50]?.withOpacity(1),
                      ),
                      child: Row(children: [
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
                            child: Padding(
                              padding: const EdgeInsets.only(left: 43),
                              child: Container(
                                  child: Row(children: const [
                                //text container
                              ])),
                            ))
                      ])),

                  const SizedBox(
                    height: 20,
                  ),
                  //*user profile 2nd box
                  Container(
                    width: 450,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue[900]?.withOpacity(1),
                    ),
                  )
                ],
              )),
          // patient detail
          SizedBox(
            height: 10,
          ),
          Container(
              margin: const EdgeInsets.all(20),
              child: Row(children: const [
                Text(
                  'Patient Details',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ])),
          // name text
          Container(
              margin: const EdgeInsets.all(20),
              child: Row(children: [
                const Text(
                  'Name',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 250),
                  child: Text(
                    'MADARA ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 10,
                    ),
                  ),
                ),
              ])),
          //Surname
          Container(
              margin: const EdgeInsets.all(20),
              child: Row(children: [
                const Text(
                  'Surname',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 230),
                  child: Text(
                    'UCHIHA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 10,
                    ),
                  ),
                ),
              ])),
          //Date of birth
          Container(
              margin: const EdgeInsets.all(20),
              child: Row(children: [
                const Text(
                  'DOB',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 255),
                  child: Text(
                    '15/02/2002',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 10,
                    ),
                  ),
                ),
              ])),
          //city
          Container(
              margin: const EdgeInsets.all(20),
              child: Row(children: [
                const Text(
                  'City',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 251),
                  child: Text(
                    'Konohagakure',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 10,
                    ),
                  ),
                ),
              ])),
          //country
          Container(
              margin: const EdgeInsets.all(20),
              child: Row(children: [
                const Text(
                  'Country',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 218),
                  child: Text(
                    'Another World',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 10,
                    ),
                  ),
                ),
              ])),
          Container(
              margin: const EdgeInsets.all(20),
              child: Row(children: const [
                Text(
                  'Shared Profile',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ])),
          Padding(
            padding: const EdgeInsets.only(left: 80, bottom: 10),
            child: Row(
              children: [
                Container(
                  width: 130,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green[100]?.withOpacity(1),
                  ),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'dec 19',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Text(
                        '15:30',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 25),
                  child: Column(children: const [
                    Text(
                      'Anna Skywaker',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text('7 views',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ))
                  ]),
                ))
              ],
            ),
          )
        ])));
  }
}
