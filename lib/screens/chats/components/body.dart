import 'package:flutter/material.dart';
import 'package:messaging_app/components/filled_outline_button.dart';
import 'package:messaging_app/constants.dart';
import 'package:messaging_app/models/Chat.dart';
import '../../messages/message_screen.dart';
import 'chat_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              SizedBox(width: kDefaultPadding),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagesScreen(name: chatsData[index].name, image: chatsData[index].image,),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
