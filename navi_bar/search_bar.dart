import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
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
                    'Choose your Character ',
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
              padding: const EdgeInsets.only(top: 60, left: 20),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.withOpacity(1),
                          image:
                              DecorationImage(image: AssetImage('assets/')))),
                )
              ])),

          Container(
            child: Center(
              child: IconButton(
                icon: Image.asset('assets/1.png'),
                iconSize: 200,
                onPressed: () {},
              ),
            ),
          )
        ])));
  }
}
