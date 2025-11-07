import 'package:flutter/material.dart';

import 'package:whatsapp/notifier/value_notfier.dart';
import 'package:whatsapp/pages/calls_page.dart';
import 'package:whatsapp/pages/chat_page.dart';
import 'package:whatsapp/pages/community_page.dart';
import 'package:whatsapp/pages/search_menue_page.dart';
import 'package:whatsapp/pages/updates_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const List pages = [
    ChatPage(),
    UpdatesPage(),
    CommunityPage(),
    CallsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // button background
            foregroundColor: Colors.black87, // text/icon color
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text(
        //     "WhatsApp",
        //     style: TextStyle(
        //       color: Colors.green,
        //       fontWeight: FontWeight.bold,
        //       fontSize: 29,
        //     ),
        //   ),
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        //   actions: [
        //     IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
        //     IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
        //     PopupMenuButton(
        //       menuPadding: EdgeInsets.only(top: 20, right: 30),

        //       itemBuilder: (context) {
        //         return [
        //           PopupMenuItem(child: Text("New group", style: menuTextStyle)),
        //           PopupMenuItem(
        //             child: Text("New community", style: menuTextStyle),
        //           ),
        //           PopupMenuItem(
        //             child: Text("Broadcast list ", style: menuTextStyle),
        //           ),
        //           PopupMenuItem(
        //             child: Text("Linked devices", style: menuTextStyle),
        //           ),
        //           PopupMenuItem(child: Text("Starred", style: menuTextStyle)),
        //           PopupMenuItem(child: Text("Settings", style: menuTextStyle)),
        //         ];
        //       },
        //     ),
        //   ],
        // ),

        // body: ValueListenableBuilder(
        //   valueListenable: navNotifier,
        //   builder: (BuildContext context, dynamic value, Widget? child) {
        //     print('lets se what value it is ');
        //     return pages.elementAt(value);
        //   },
        // ),
        body: SearchMenuePage(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          iconSize: 25,
          onTap: (value) {
            navNotifier.value = value;
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_sharp),
              label: 'Chats',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined),
              label: 'Community',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Calls'),
          ],
        ),
      ),
    );
  }
}
