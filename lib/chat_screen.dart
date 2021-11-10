import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: 15,
          ),
        ),
        centerTitle: true,
        title: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/originals/5f/cd/88/5fcd8817dd0d017f680d358ea455f9c1.jpg'),
              radius: 15,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Uncle zach',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  width: 1,
                ),
                Icon(
                  Icons.arrow_right_outlined,
                  color: Colors.white70,
                  size: 16,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 15,
                start: 8,
                end: 8,
              ),
              child: Column(
                children: [
                  BubbleNormal(
                    text: 'Let\'s get lunch, How about pizza?',
                    isSender: true,
                    color: Colors.blue.shade400,
                    sent: true,
                    tail: true,
                    textStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  BubbleNormal(
                    text: 'Let\'s do it! i\'m ina meeting until noon.',
                    isSender: false,
                    color: Colors.grey.shade300,
                    sent: false,
                    tail: true,
                    textStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  BubbleNormal(
                    text:
                        'that\'s perfect. there\'s a new place on Main 5t i\'ve seen wanting to check out. i hear their hawaiian pizza is off the hock!',
                    isSender: true,
                    color: Colors.blue.shade400,
                    sent: true,
                    tail: true,
                    textStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  BubbleNormal(
                    text:
                        'i don\'t know why people are so anti pineapple pizza, i kinda of like it.',
                    isSender: false,
                    color: Colors.grey.shade300,
                    sent: false,
                    tail: true,
                    textStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 270,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 4,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  hintText: 'Type a message',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
