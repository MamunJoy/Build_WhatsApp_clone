import 'package:flutter/cupertino.dart';

class GroupTab extends StatefulWidget {
  const GroupTab({super.key});

  @override
  State<GroupTab> createState() => _GroupTabState();
}

class _GroupTabState extends State<GroupTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Group'),
      ),
    );
  }
}
