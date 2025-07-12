import 'package:flutter/material.dart';

class chats extends StatelessWidget {
  const chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("WhatsApp", style: TextStyle(color: Colors.white)),

        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 15),
          Icon(Icons.camera_alt),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 5),
          TextField(
            decoration: InputDecoration(
              filled: true,
              prefixIcon: Icon(Icons.search_rounded),
              fillColor: Colors.grey,
              labelText: "search",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://media.istockphoto.com/id/1434185514/vector/portrait-of-man-listening-to-music-with-headphones.jpg?s=612x612&w=0&k=20&c=rs8qvtghFOCYmktQKZd1ApcfUuf7KMz8B7qIff1HNKs=",
              ),
            ),
            title: Text("Adityakrishna"),
            subtitle: Text("heyy"),
            trailing: Text("9:35 am"),
          ),SizedBox(height: 1),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://media.istockphoto.com/id/1434185514/vector/portrait-of-man-listening-to-music-with-headphones.jpg?s=612x612&w=0&k=20&c=rs8qvtghFOCYmktQKZd1ApcfUuf7KMz8B7qIff1HNKs=",
              ),
            ),
            title: Text("Joyal"),
            subtitle: Text("dey thambi"),
            trailing: Text("10:00 am"),
          ),SizedBox(height: 1),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://media.istockphoto.com/id/1434185514/vector/portrait-of-man-listening-to-music-with-headphones.jpg?s=612x612&w=0&k=20&c=rs8qvtghFOCYmktQKZd1ApcfUuf7KMz8B7qIff1HNKs=",
              ),
            ),
            title: Text("Nyjin"),
            subtitle: Text("ni evide"),
            trailing: Text("10:12 am"),
          ),
        ],
      ),
    );
  }
}
