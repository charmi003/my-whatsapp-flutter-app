import 'package:flutter/material.dart';
import '../model/chat.dart';
import '../widgets/ChatCardWidget.dart';
import 'SendMessage.dart';

class Chats extends StatefulWidget {
  const Chats({ Key? key }) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final chats = messageData;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:chats.length,
      itemBuilder: (context,index)=> Column(
        children: [
          Divider(height: 10,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context)=>SendMessage())
              );
            },
            child: ChatCardWidget(
              name: chats[index].name,
              imageUrl: chats[index].imageUrl,
              time: chats[index].time,
              message: chats[index].message
            ),
          ),
        ],
      ),
    );
  }
}