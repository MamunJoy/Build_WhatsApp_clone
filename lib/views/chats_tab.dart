import 'package:flutter/material.dart';
import 'package:whats_app_clone/utility/color.dart';

class ChattingTab extends StatefulWidget {
  const ChattingTab({super.key});

  @override
  State<ChattingTab> createState() => _ChattingTabState();
}

class _ChattingTabState extends State<ChattingTab> {

  List<Map<String, dynamic>> chats = [
    {
      'name' : 'Mamun Joy',
      'profile_picture' : 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fboy%2520profile%2520photo%2F&psig=AOvVaw3RcEqD9E55GUJhIdXNj0IP&ust=1751460806756000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMiNiIzam44DFQAAAAAdAAAAABAE',
      'last_message' : 'Hi, i am here...',
      'last_message_time' : '3.30 pm',
      'unread' : '2',
    },

    {
      'name' : 'Aser Awsaf',
      'profile_picture' : 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.facebook.com%2Fgroups%2F522917726292457%2Fposts%2F1081661527084738%2F&psig=AOvVaw3RcEqD9E55GUJhIdXNj0IP&ust=1751460806756000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMiNiIzam44DFQAAAAAdAAAAABAL',
      'last_message' : 'hello vai, are you here?',
      'last_message_time' : '6.50 PM',
      'unread' : '4',
    },

    {
      'name' : 'Rayhan Sikhder',
      'profile_picture' : 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fprinceamanullah%2Fhandsome-boy-photo%2F&psig=AOvVaw3RcEqD9E55GUJhIdXNj0IP&ust=1751460806756000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMiNiIzam44DFQAAAAAdAAAAABAV',
      'last_message' : 'Vai , online e achen?',
      'last_message_time' : ' 8.10 pm',
      'unread' : '0',
    },

    {
      'name' : 'Sabbir Rashid Potka',
      'profile_picture' : 'https://play.google.com/store/apps/details?id=net.wllppr.boys_profile_pictures',
      'last_message' : 'Hello brother...',
      'last_message_time' : ' 10.35 pm',
      'unread' : '6',
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 400,
      child: Column(
        children: [
          ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              final data = chats[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage:NetworkImage(data['profile_picture']),),
              title: Text(data ['name']),
              subtitle: Text(data['last_message']),

              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(data['last_message_time'],
                    style: TextStyle(
                      color: AppColor.PrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(data['unread'].toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: AppColor.PrimaryColor,
                      shape: BoxShape.circle,
                    ),
                  )
                ],),
            );
          },
          )
        ],
      ),
    );
  }
}
