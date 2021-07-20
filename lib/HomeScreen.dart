import 'package:demoproject/card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),

          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: null),
                Padding(
                  padding:  EdgeInsets.only(left: 20),
                  child: Text("Events", textScaleFactor: 1.5,style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.white
                  ),),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => MyCard(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),



    );

  }
}
