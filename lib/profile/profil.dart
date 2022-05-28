import 'package:flutter/material.dart';
import 'package:messaging_app/screens/detailprofil/detailprofil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // navigate to profile detail
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailProfile(),
                            ),
                          );
                        },
                        child: Hero(
                          tag: "profile_detail",
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "asset/images/fathan.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Edit",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ],
                  ),
                  const SizedBox(width: 18),
                  const Text(
                      "Enter your name add an optional \nprofile picture"),
                ],
              ),
              const Divider(
                color: Color.fromARGB(78, 196, 196, 196),
                height: 24,
                thickness: 1,
                indent: 2,
                endIndent: 2,
              ),
              const SizedBox(
                height: 3,
              ),
              const Align(
                  alignment: Alignment.centerLeft, child: Text("Fathkim")),
              const Divider(
                color: Color.fromARGB(78, 196, 196, 196),
                height: 24,
                thickness: 1,
                indent: 2,
                endIndent: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Phone Number",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("+62 812-1234-1234")),
              const Divider(
                color: Color.fromARGB(78, 196, 196, 196),
                height: 24,
                thickness: 1,
                indent: 2,
                endIndent: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "About",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Apaan aja dah")),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text("Profile"),
    );
  }
}
