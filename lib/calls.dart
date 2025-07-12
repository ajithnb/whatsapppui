import 'package:flutter/material.dart';

class calls extends StatelessWidget {
  const calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Calls"),
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
        children: [SizedBox(height: 10,),
          TextField(decoration: InputDecoration(filled: true,
              prefixIcon: Icon(Icons.search_rounded),
              fillColor: Colors.grey,
              labelText: "search",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(
                  15), borderSide: BorderSide.none)),),SizedBox(height: 5,),
          Text(
            "Favourites",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          ListTile(
            leading: Icon(Icons.add_circle),
            title: Text("Add Favourites"),
          ),
          Text("Recent", style: TextStyle(fontSize: 18, color: Colors.black)),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://media.istockphoto.com/id/1434185514/vector/portrait-of-man-listening-to-music-with-headphones.jpg?s=612x612&w=0&k=20&c=rs8qvtghFOCYmktQKZd1ApcfUuf7KMz8B7qIff1HNKs=",
              ),
            ),
            title: Text("Adityakrishna"),
            subtitle: Row(
              children: [Icon(Icons.missed_video_call),
                Text("Today, 10:00am"),
              ],
            ),
            trailing: Icon(Icons.videocam_outlined),
          ),
        ],
      ),
    );
  }
}
