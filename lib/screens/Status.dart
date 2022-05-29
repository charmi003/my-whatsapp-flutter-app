import 'package:flutter/material.dart';
import 'package:my_whatsapp/widgets/StatusCardWidget.dart';
import '../model/chat.dart';

class Status extends StatefulWidget {
  const Status({ Key? key }) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  final chats=messageData;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StatusCardWidget(name: "My Status", imageUrl: "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", time: "Tap To Add Status"),
        Divider(),
        Heading(heading: "Recent Updates"),
        StatusCardWidget(name: chats[2].name, imageUrl: chats[2].imageUrl, time: chats[2].time),
        StatusCardWidget(name: chats[4].name, imageUrl: chats[4].imageUrl, time: chats[4].time),
        StatusCardWidget(name: chats[3].name, imageUrl: chats[3].imageUrl, time: chats[3].time),
        Divider(),
        Heading(heading: 'Viewed Updates'),
        StatusCardWidget(name: chats[1].name, imageUrl: chats[1].imageUrl, time: chats[1].time)
      ],
      
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;
  const Heading({ Key? key,required this.heading }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:10.0,top:5.0),
      child: Text(
        heading,
        style:TextStyle(
          fontSize:16.0,
          fontWeight: FontWeight.bold,
          color:Colors.grey
        )
      ),
    );
  }
}