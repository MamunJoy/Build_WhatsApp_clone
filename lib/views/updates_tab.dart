import 'package:flutter/cupertino.dart';

class UpdatesTab extends StatefulWidget {
  const UpdatesTab({super.key});

  @override
  State<UpdatesTab> createState() => _UpdatesTabState();
}

class _UpdatesTabState extends State<UpdatesTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Update Tab'),
      ),
    );
  }
}
