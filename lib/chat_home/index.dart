import 'package:flutter/material.dart';

class ChatHome extends StatefulWidget {
  const ChatHome({ Key? key }) : super(key: key);

  @override
  _ChatHomeState createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('This is the chat home'),),
      ),
    );
  }
}