import 'package:flutter/material.dart';
import 'package:responsive_layout/constant.dart';
import 'package:responsive_layout/util/my_box.dart';
import 'package:responsive_layout/util/my_title.dart';

class TabletScreenLayout extends StatelessWidget {
  const TabletScreenLayout ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      drawer: newDrawer,
      appBar: myAppBar,
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
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 3/2,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        itemBuilder: (context, index){
                          return const MyBox();
                        }
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                      itemBuilder: (context, index){
                        return const MyTile();
                      }
                  ),
                ),
              ],
            ),
          )
      ],
      ),
    );
  }
}
