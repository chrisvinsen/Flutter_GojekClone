import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gojek_clone/model/promotion.dart';
import 'package:gojek_clone/shared/style.dart';

class HomeScreen extends StatelessWidget {
  final String name;
  HomeScreen({required this.name});

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 8.0, bottom: 20.0, left: 10.0, right: 10.0),
          child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Align(alignment: Alignment.centerLeft, child: Text('Selamat datang kembali $name!', style: textHeading2,))
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                            width: 1,
                          )),
                      color: Colors.green,
                      child: Container(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.all(12),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('images/gopay.png',
                                                width: 80),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 6, bottom: 6),
                                                child: Text('Rp 500.000',
                                                    style: textHeading5)),
                                            Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 3),
                                                child: Text('Let\'s order now!',
                                                    style: textParagraf5)),
                                          ],
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(children: [
                                    IconButton(
                                        icon: Icon(Icons.arrow_upward,
                                            color: Colors.white),
                                        tooltip: 'Bayar',
                                        onPressed: () {}),
                                    Text('Pay',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                        )),
                                  ]),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(children: [
                                    IconButton(
                                        icon:
                                            Icon(Icons.add, color: Colors.white),
                                        tooltip: 'Top Up',
                                        onPressed: () {}),
                                    Text('Top Up',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                        )),
                                  ]),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(children: [
                                    IconButton(
                                        icon:
                                            Icon(Icons.star, color: Colors.white),
                                        tooltip: 'Explore',
                                        onPressed: () {}),
                                    Text('Explore',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                        )),
                                  ]),
                                ),
                              ],
                            )),
                      )),
                ),
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
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                              ]))),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final Promotion promotion = promotionList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        color: Colors.white,
                        child: InkWell(
                            onTap: () {},
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                // if you need this
                                side: BorderSide(
                                  color: Colors.grey.withOpacity(0.2),
                                  width: 1,
                                ),
                              ),
                              child: Column(children: <Widget>[
                                Container(
                                    child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  child: Image.asset(
                                    promotion.imageAsset,
                                  ),
                                )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 3, left: 10, right: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      promotion.title,
                                      style: textHeading3,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 3, bottom: 14, left: 10, right: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      promotion.description,
                                      style: textParagraf4,
                                    ),
                                  ),
                                ),
                              ]),
                            )),
                      ),
                    );
                  },
                  itemCount: promotionList.length,
                ),
              ],
            ),
        )),
  );
}
