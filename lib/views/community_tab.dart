import 'package:flutter/material.dart';

class CommunityTab extends StatefulWidget {
  const CommunityTab({super.key});

  @override
  State<CommunityTab> createState() => _CommunityTabState();
}

class _CommunityTabState extends State<CommunityTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Center(child: Text('Community')),
      ),
    );
  }
}
