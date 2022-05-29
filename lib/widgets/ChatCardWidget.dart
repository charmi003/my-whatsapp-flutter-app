import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class ChatCardWidget extends StatelessWidget {
  final String name,imageUrl,time,message;

  const ChatCardWidget({ Key? key, required this.name, required this.imageUrl, required this.time, required this.message }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25,
        backgroundImage: NetworkImage(imageUrl),
        foregroundColor: Colors.deepPurple
      ),
      title:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style:TextStyle(fontWeight: FontWeight.bold)
          ),
          Text(
            time,
            style:TextStyle(color:Colors.grey, fontSize: 14)
          )
        ],
      ),
      subtitle: Container(
        padding: EdgeInsets.only(top:5),
        child: Text(
          message,
        )
      )
    );
  }
}