import 'package:flutter/material.dart';
import 'package:responsive_layout/constant.dart';
import 'package:responsive_layout/util/my_box.dart';
import 'package:responsive_layout/util/my_title.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text(
          "S T U D I O ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 200,
              top: 10,
              bottom: 10,
            ),
            child: SizedBox(
              width: 500,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: "Search across your channel...",
                      hintStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                          ))),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
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
        ],
      ),
      body: Row(
        children: [
          newDrawer,
          Expanded(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 3 / 2,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return const MyBox();
                        }),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const MyTile();
                      }),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.grey,
                      Colors.black,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
