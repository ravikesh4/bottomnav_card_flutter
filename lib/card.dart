import 'package:flutter/material.dart';


class MyCard extends StatelessWidget {


  const MyCard({Key key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 140,
      // width: 350,
      child: Card(
        elevation: 5,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network("https://picsum.photos/250?image=9", width: 70, fit: BoxFit.cover , ))),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tournament 1" , textScaleFactor: 1.2, style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(Icons.add_location, size: 15,color: Colors.black54,),
                            SizedBox(
                              width: 4,
                            ),
                            Text("Al Warah stadium", textScaleFactor: 0.9, style: TextStyle(
                                fontWeight: FontWeight.w700
                            ), ),
                          ],
                        ), SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(Icons.api, size: 15,color: Colors.black54,),
                            SizedBox(
                              width: 4,
                            ),
                            Text("All warag SG PH Khor SC", textScaleFactor: 0.9, style: TextStyle(
                                fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.calendar_today_outlined, size: 15,color: Colors.black54,),
                            SizedBox(
                              width: 4,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Report At:", textScaleFactor: 0.9, style: TextStyle(
                                    fontWeight: FontWeight.w700
                                ),),
                                Text("22-May-2021, 7.00pm", textScaleFactor: 0.9, style: TextStyle(
                                    fontWeight: FontWeight.w700
                                ),),
                              ],
                            ),

                          ],
                        ),

                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.note_add, color: Colors.white,),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }


}