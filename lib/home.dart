import 'package:flutter/material.dart';
import 'package:whatsapppui/calls.dart';
import 'package:whatsapppui/chats.dart';
import 'package:whatsapppui/community.dart';
import 'package:whatsapppui/update.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int index = 0;
  List<Widget> screens = [chats(), update(), commmunity(), calls()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("WhatsApp", style: TextStyle(color: Colors.white70)),

        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 15),
          Icon(Icons.camera_alt),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 15),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      bottomNavigationBar: BottomNavigationBar( currentIndex: index,onTap: (value) {
        setState(() {
          index=value;

        });
      },
        selectedItemColor: Colors.green,unselectedItemColor: Colors.black ,showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "update"),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: "community",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: "calls",
          ),
        ],
      ),
    body: screens[index],
    );
  }
}
