import 'package:flutter/material.dart';
import 'package:messaging_app/Calls/callItem.dart';
import 'package:messaging_app/models/Chat.dart';
import 'package:messaging_app/screens/messages/message_screen.dart';

class CallsScreen extends StatelessWidget {
  List calls = chatsData;
  CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: calls.length,
            itemBuilder: (context, index) => CallItem(
              call: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagesScreen(
                    name: chatsData[index].name,
                    image: chatsData[index].image,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
