import 'package:flutter/material.dart';
import 'package:my_whatsapp/widgets/CallCardWidget.dart';
import '../model/calls.dart';

class Calls extends StatefulWidget {
  const Calls({ Key? key }) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  final calls=callData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: calls.length,
      itemBuilder: (context,index)=>Column(
        children: [
          Divider(
            height:10
          ),
          CallCardWidget(name: calls[index].name, imageUrl: calls[index].imageUrl, time: calls[index].time)
        ],
      ),

    );
  }
}