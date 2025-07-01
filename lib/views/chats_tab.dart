import 'package:flutter/material.dart';
import 'package:whats_app_clone/utility/color.dart';

class ChattingTab extends StatefulWidget {
  const ChattingTab({super.key});

  @override
  State<ChattingTab> createState() => _ChattingTabState();
}

class _ChattingTabState extends State<ChattingTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage:NetworkImage('https://img.freepik.com/premium-photo/young-man-isolated-blue_1368-124991.jpg?semt=ais_hybrid&w=740'),),
          title: Text('Mamun Joy'),
          subtitle: Text('Hey, are you here?'),

          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('8.40 PM',
                style: TextStyle(
                  color: AppColor.PrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: Center(
                  child: Text('2', style: TextStyle(
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
        ),
      ],
    );
  }
}
