import 'package:flutter/material.dart';
import 'package:messaging_app/Calls/callItem.dart';
import 'package:messaging_app/models/Chat.dart';
import 'package:messaging_app/screens/messages/message_screen.dart';


class PeopleScreen extends StatelessWidget {
    List peoples = chatsData;
    PeopleScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: peoples.length,
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