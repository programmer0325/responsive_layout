import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey,
      child: Column(
        children: [
          const DrawerHeader(child: Icon(Icons.favorite_border_outlined),),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.grey,),
            title: const Text(
              "H O M E",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: (){},
          )
        ],
      ),
    );
  }
}
