import 'package:flutter/material.dart';
import 'package:whatsapp/constant/text_constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> btnText = ['Unread 3', 'Favourites', 'Groups'];
    List<String> chatNames = [
      "Project Team MCA",
      "Dinesh Pokheri",
      "College Friends",
      "Flutter Devs",
      "Family Group",
      "Library Staff",
      "Hostel Roomies",
      "Mentor Sir",
      "UI Design Club",
      "Exam Cell",
      "Placement Group",
      "Sports Committee",
    ];
    List<String> lastMessages = [
      "Done bro ✅",
      "Okay cool",
      "Where r u?",
      "Pushed code",
      "Good night 🌙",
      "Got it!",
      "Party tonight?",
      "Check mail",
      "Nice design",
      "Exam tomorrow",
      "All set 👍",
      "See you!",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 29,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          PopupMenuButton(
            menuPadding: EdgeInsets.only(top: 20, right: 30),

            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New group", style: menuTextStyle)),
                PopupMenuItem(
                  child: Text("New community", style: menuTextStyle),
                ),
                PopupMenuItem(
                  child: Text("Broadcast list ", style: menuTextStyle),
                ),
                PopupMenuItem(
                  child: Text("Linked devices", style: menuTextStyle),
                ),
                PopupMenuItem(child: Text("Starred", style: menuTextStyle)),
                PopupMenuItem(child: Text("Settings", style: menuTextStyle)),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Ask Meta AI or Search",
                  hintStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 128, 122, 122),
                    ),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 128, 122, 122),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onSubmitted: (value) {
                  print(value);
                },
              ),
              SizedBox(height: 18),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 11,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(1),
                      ),
                      child: Text('All'),
                    ),
                    ...List.generate(3, (index) {
                      String text = btnText[index];
                      return ElevatedButton(
                        onPressed: () {},
                        child: Text('$text'),
                      );
                    }),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(1),
                        textStyle: TextStyle(fontSize: 25),
                      ),
                      child: Text('+'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18),
              ...List.generate(12, (index) {
                return Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/one.jpg'),
                    ),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              chatNames[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 38),
                            Text("1:21 Am"),
                          ],
                        ),
                        Text(lastMessages[index]),
                        SizedBox(height: 22),
                      ],
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        onTap: (value) {
          print(value);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat_sharp), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'Community',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Calls'),
        ],
      ),
    );
  }
}
