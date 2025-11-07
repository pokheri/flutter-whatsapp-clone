import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/text_field_decoration.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

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

    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                SizedBox(height: 10),
                TextField(
                  decoration: textFieldDecoration(),
                  onSubmitted: (value) {
                    print(value);
                  },
                  onTap: () {
                    print('the button is clicked just  clicked ');
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
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                        child: Text('All'),
                      ),
                      ...List.generate(3, (index) {
                        String text = btnText[index];
                        return ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                          ),
                          child: Text(text),
                        );
                      }),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(1),
                          textStyle: TextStyle(fontSize: 25),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                        child: Text('+'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                ...List.generate(12, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ), // spacing between chats
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/one.jpg'),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      chatNames[index],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow
                                          .ellipsis, // prevents overflow
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "1:21 AM",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                lastMessages[index],
                                style: TextStyle(color: Colors.grey[800]),
                                overflow: TextOverflow
                                    .ellipsis, // truncate if too long
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
        Positioned(
          right: width * 0.06,
          bottom: height * 0.0400,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_comment_rounded),
            style: IconButton.styleFrom(
              backgroundColor: Colors.green,
              iconSize: 26,
              foregroundColor: Colors.white,
              padding: EdgeInsets.all(17),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15),
                // side: BorderSide(color: Colors.white30, width: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
