import 'package:flutter/material.dart';
import 'package:messaging_app/constants.dart';
import 'package:messaging_app/models/Chat.dart';

class PeopleItem extends StatelessWidget {
  final Chat people;
  final VoidCallback press;

  const PeopleItem({Key? key, required this.people, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(people.image),
                ),
                // if (call.isActive)
                //   Positioned(
                //     right: 0,
                //     bottom: 0,
                //     child: Container(
                //       height: 16,
                //       width: 16,
                //       decoration: BoxDecoration(
                //         color: kPrimaryColor,
                //         shape: BoxShape.circle,
                //         border: Border.all(
                //             color: Theme.of(context).scaffoldBackgroundColor,
                //             width: 3),
                //       ),
                //     ),
                //   )
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      people.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    // Opacity(
                    //   opacity: 0.64,
                    //   child: Text(people.time),
                    // ),
                    // const SizedBox(height: 8),
                    // Opacity(
                    //   opacity: 0.64,
                    //   child: Text(
                    //     call.lastMessage,
                    //     maxLines: 1,
                    //     overflow: TextOverflow.ellipsis,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            // const Icon(
            //   Icons.phone,
            //   size: 25,
            //   color: Color.fromARGB(255, 81, 162, 123),
            // )
          ],
        ),
      ),
    );
  }
}
