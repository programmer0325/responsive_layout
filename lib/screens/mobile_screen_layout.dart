import 'package:flutter/material.dart';
import 'package:responsive_layout/constant.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      drawer: newDrawer,
      appBar: AppBar(
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
        ],
      ),
      body: Row(
        children: [
          SizedBox(
            width: 70,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: const Column(
                  children: [
                         CircleAvatar(),
                    SizedBox(height: 30,),
                    Icon(Icons.dashboard_outlined),
                    SizedBox(height: 20,),
                    Icon(Icons.video_collection_outlined),
                    SizedBox(height: 20,),
                    Icon(Icons.analytics_outlined),
                    SizedBox(height: 20,),
                    Icon(Icons.comment_outlined),
                    SizedBox(height: 20,),
                    Icon(Icons.subtitles),
                    SizedBox(height: 20,),
                    Icon(Icons.copyright_outlined),
                    SizedBox(height: 20,),
                    Icon(Icons.monetization_on_outlined),
                    SizedBox(height: 20,),
                    Icon(Icons.edit_outlined),
                    SizedBox(height: 20,),
                    Icon(Icons.library_music_outlined),
                    SizedBox(height: 20,),
                    Icon(Icons.settings),
                    SizedBox(height: 20,),
                    Icon(Icons.feedback_outlined),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: 3,
                itemBuilder: (context, index){
                  return SizedBox(
                    height: 300,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.grey,
                                Colors.black
                              ])
                        ),
                      ),
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
