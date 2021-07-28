import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gojek_clone/shared/style.dart';

class PromoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
    child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                        )),
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Image.asset(
                                'images/goclub.png',
                                width: 100,
                              ),
                              Column(children: <Widget>[
                                Text(
                                  '189 XP',
                                  style: textHeading3,
                                ),
                                Text(
                                  'Warga',
                                  style: textParagraf5,
                                )
                              ])
                            ]
                        )
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.grey.withOpacity(0.2),
                                width: 1,
                              )),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('23', style: textHeading3),
                                    IconButton(
                                      onPressed: () { },
                                      icon: Icon(Icons.arrow_forward_ios),
                                      iconSize: 16,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text('Vouchers', style: textHeading5),
                                ),
                                Text('5 Expiring Soon', style: textParagraf5),
                                Container(
                                  margin: EdgeInsets.only(top: 6),
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                )
                              ],
                            )
                          )
                      ),
                    ),
                    Expanded(
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.grey.withOpacity(0.2),
                                width: 1,
                              )),
                          child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('0', style: textHeading3),
                                      IconButton(
                                        onPressed: () { },
                                        icon: Icon(Icons.arrow_forward_ios),
                                        iconSize: 16,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Text('Subscriptions', style: textHeading5),
                                  ),
                                  Text('Active now', style: textParagraf5),
                                  Container(
                                    margin: EdgeInsets.only(top: 6),
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color: Colors.pink,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  )
                                ],
                              )
                          )
                      ),
                    ),
                    Expanded(
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.grey.withOpacity(0.2),
                                width: 1,
                              )),
                          child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('0', style: textHeading3),
                                      IconButton(
                                        onPressed: () { },
                                        icon: Icon(Icons.arrow_forward_ios),
                                        iconSize: 16,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Text('Missions', style: textHeading5),
                                  ),
                                  Text('In Progress', style: textParagraf5),
                                  Container(
                                    margin: EdgeInsets.only(top: 6),
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color: Colors.lightBlue,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  )
                                ],
                              )
                          )
                      ),
                    ),
                  ],
                )
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: OutlinedButton(
                  onPressed: () { },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, size: 16, color: Colors.black),
                            SizedBox(width: 6),
                            Text('Got a promo code? Enter here', style: TextStyle(color: Colors.black))
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios, size: 16)
                      ],
                    ),
                  ),
                )
              ),
           ]
          ),
        )
    ),
  );
}
