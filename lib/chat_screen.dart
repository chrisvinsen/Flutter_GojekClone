import 'package:flutter/material.dart';
import 'package:gojek_clone/shared/style.dart';

import 'model/chat.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
    child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Align(alignment: Alignment.centerLeft, child: Text('Quick actions', style: textHeading5,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                MaterialButton(
                                  color: Colors.deepOrange,
                                  textColor: Colors.white,
                                  onPressed: () { },
                                  child: Icon(Icons.mail_rounded, size: 20),
                                  padding: EdgeInsets.all(16),
                                  shape: CircleBorder(),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6),
                                  child: Text(
                                    'Inbox',
                                    style: textParagraf5,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ]
                            ),
                          ),
                          Expanded(
                            child: Column(
                                children: [
                                  MaterialButton(
                                    color: Colors.green,
                                    textColor: Colors.white,
                                    onPressed: () { },
                                    child: Icon(Icons.help, size: 20),
                                    padding: EdgeInsets.all(16),
                                    shape: CircleBorder(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: Text(
                                        'Help tickets',
                                        style: textParagraf5,
                                        textAlign: TextAlign.center,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ]
                            ),
                          ),
                          Expanded(
                            child: Column(
                                children: [
                                  MaterialButton(
                                    color: Colors.green,
                                    textColor: Colors.white,
                                    onPressed: () { },
                                    child: Icon(Icons.supervised_user_circle, size: 20),
                                    padding: EdgeInsets.all(16),
                                    shape: CircleBorder(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: Text(
                                        'New group',
                                        style: textParagraf5,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ]
                            ),
                          ),
                          Expanded(
                            child: Column(
                                children: [
                                  MaterialButton(
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    onPressed: () { },
                                    child: Icon(Icons.multiline_chart, size: 20),
                                    padding: EdgeInsets.all(16),
                                    shape: CircleBorder(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: Text(
                                        'Split bill',
                                        style: textParagraf5,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ]
                            ),
                          ),
                          Expanded(
                            child: Column(
                                children: [
                                  MaterialButton(
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    onPressed: () { },
                                    child: Icon(Icons.payment, size: 20),
                                    padding: EdgeInsets.all(16),
                                    shape: CircleBorder(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: Text(
                                        'Pay',
                                        style: textParagraf5,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Align(alignment: Alignment.centerLeft, child: Text('Your chats', style: textHeading5,)),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final Chat chat = chatList[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Container(
                            color: Colors.white,
                            child: InkWell(
                                onTap: () {},
                                child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              MaterialButton(
                                                color: Colors.green,
                                                textColor: Colors.white,
                                                onPressed: () { },
                                                child: Text('#', style: textHeading3),
                                                padding: EdgeInsets.all(16),
                                                shape: CircleBorder(),
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(chat.number, style: textHeading4),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 4.0),
                                                    child: Text('You have a message', style: textParagraf5),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          Text(chat.dateString, style: textParagraf5)
                                        ],
                                      ),
                                    ),
                            ),
                          ),
                        );
                      },
                      itemCount: chatList.length,
                    )
                  ],
                )
              )
            ]
        ),
      )
    ),
  );
}
