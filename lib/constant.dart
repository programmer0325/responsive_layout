import 'package:flutter/material.dart';

var newDrawer = Drawer(
  backgroundColor: Colors.grey,
  child: Column(
    children: [
      const DrawerHeader(
        child: Icon(Icons.favorite_border_outlined),
      ),
      ListTile(
        leading: const Icon(
          Icons.home,
          color: Colors.black,
        ),
        title: const Text(
          "H O M E",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        title: const Text(
          "N O T I F I C A T I O N S",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(
          Icons.settings,
          color: Colors.black,
        ),
        title: const Text(
          "S E T T I N G ",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(
          Icons.logout,
          color: Colors.black,
        ),
        title: const Text(
          "L O G O U T",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onTap: () {},
      ),
    ],
  ),
);

var myAppBar = AppBar(
    backgroundColor: Colors.grey[800],
    title: const Text(
      "S T U D I O",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {
          print("object");
        },
        icon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {
          print("hii");
        },
        icon: const Icon(
          Icons.question_mark_outlined,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {
          print("yes");
        },
        icon: const Icon(
          Icons.video_call_outlined,
          color: Colors.white,
        ),
      ),
      const CircleAvatar(),
    ]);
