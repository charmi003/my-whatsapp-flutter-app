import 'package:flutter/material.dart';

class StatusCardWidget extends StatelessWidget {
  final String name,imageUrl,time;
  const StatusCardWidget({ Key? key,required this.name, required this.imageUrl, required this.time }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25,
        backgroundImage: NetworkImage(imageUrl),
        foregroundColor: Colors.deepPurple
      ),
      title: Text(
        name,
        style:TextStyle(fontWeight: FontWeight.bold)
      ),
      subtitle: Container(
        padding: EdgeInsets.only(top:5),
        child: Text(
          time,
        )
      ),
    );
  }
}