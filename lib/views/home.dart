import 'package:flutter/material.dart';
import 'package:whats_app_clone/utility/color.dart';
import 'package:whats_app_clone/views/chats_tab.dart';
import 'package:whats_app_clone/views/community_tab.dart';
import 'package:whats_app_clone/views/group_tab.dart';
import 'package:whats_app_clone/views/updates_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whats App'),
          backgroundColor: AppColor.PrimaryColor,
          actions: const [
            Icon(Icons.camera_alt_outlined,color: Colors.white),
            SizedBox(width: 15,),
            Icon(Icons.search,color: Colors.white),
            SizedBox(width: 15,),
            Icon(Icons.more_vert,color: Colors.white),
            SizedBox(width: 15,),
          ],
          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white.withOpacity(.5),
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs:[
            Tab(icon: Icon(Icons.groups),),
            Tab(text: 'Chats',  ),
            Tab(text: 'Updates',),
            Tab(text: 'Community',),
          ]),
        ),

        body: TabBarView(children: [
          GroupTab(),
          ChattingTab(),
          UpdatesTab(),
          CommunityTab(),

        ],
        ),

        floatingActionButton: FloatingActionButton(onPressed: () {},
        child:
        Icon(Icons.message, color: Colors.white,),
          backgroundColor: AppColor.PrimaryColor,
        ),
      ),
    );
  }
}
