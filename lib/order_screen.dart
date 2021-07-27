import 'package:flutter/material.dart';
import 'package:flutter_custom_tab_bar/custom_tab_bar.dart';
import 'package:flutter_custom_tab_bar/delegate/color_transform_delegte.dart';
import 'package:flutter_custom_tab_bar/indicator/linear_indicator.dart';
import 'package:flutter_custom_tab_bar/tab_bar_item.dart';
import 'package:flutter_custom_tab_bar/tab_bar_item_info.dart';
import 'package:gojek_clone/login_screen.dart';
import 'package:gojek_clone/shared/style.dart';

import 'model/order.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final int pageCount = 3;
  final PageController _controller = PageController();
  final LinearIndicatorController _linearIndicatorController = LinearIndicatorController();

  Widget getTabbarChild(BuildContext context, TabBarItemInfo info) {
    return TabBarItem(
      tabbarItemInfo: info,
      delegate: ColorTransformDelegate(
          highlightColor: Colors.green,
          normalColor: Colors.black,
          builder: (context, color) {
            return Container(
              padding: EdgeInsets.all(2),
              alignment: Alignment.center,
              constraints: BoxConstraints(minWidth: 100, minHeight: 50),
              child: Text(
                info.itemIndex == 0 ? 'History' : info.itemIndex == 1 ? 'Ongoing' : 'Scheduled',
                style: TextStyle(fontSize: 14, color: color),
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    body: Column(
      children: [
        Container(
          height: 35,
          child: CustomTabBar(
            defaultPage: 0,
            itemCount: pageCount,
            builder: getTabbarChild,
            indicator: LinearIndicator(
              indicatorColor: Colors.green,
              controller: _linearIndicatorController,
            ),
            pageController: _controller,
            tabbarController: _linearIndicatorController,
          ),
        ),
        Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: pageCount,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return ListOrderScreen();
                  } else if (index == 2) {
                    return ListOrderScreen();
                  } else {
                    return EmptyOrderScreen();
                  }
                }
              )
        )
      ],
    ),
  );
}

class ListOrderScreen extends StatelessWidget {
  const ListOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final Order order = orderList[index];
        return Container(
            color: Colors.white,
            child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 18, right: 18),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                          children: [
                            MaterialButton(
                              color: Colors.green,
                              textColor: Colors.white,
                              onPressed: () { },
                              child: Icon(Icons.all_inbox, size: 20),
                              padding: EdgeInsets.all(16),
                              shape: CircleBorder(),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(order.place, style: textHeading4),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: Text(order.status, style: textHeading5),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(order.datetime_string, style: textParagraf5),
                                ),
                              ],
                            )
                          ],
                        ),
                    ),
                  ),
                )
            ),
          );
      },
      itemCount: orderList.length,
    );
  }
}

class EmptyOrderScreen extends StatelessWidget {
  const EmptyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/welcome_image.png', width: 250),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: Text('Let\'s order Gojek!', style: textHeading2),
            ),
            Text('Our drivers will be very happy to help you.', style: textParagraf5),
          ],
        )
      ),
    );
  }
}
