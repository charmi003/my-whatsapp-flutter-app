import 'package:flutter/material.dart';

class SendMessage extends StatefulWidget {
  const SendMessage({ Key? key }) : super(key: key);

  @override
  State<SendMessage> createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  var _formKey=GlobalKey<FormState>();
  String? message;
  String messageToBeShown='';
  final messageFieldController= TextEditingController();

  onChangedMessage(input)=> setState(()=>message=input);


  submit(){
    final isValid=_formKey.currentState!.validate();
    if(isValid){
      setState(() {
        messageToBeShown=message!;
      });
      messageFieldController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Message')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(messageToBeShown,style:TextStyle(
                fontSize: 18,
              )),
              SizedBox(width:15)
            ],
          ),
          SizedBox(height: 40,),
          Form(
            key: _formKey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width:310,
                  child: TextFormField(
                    controller: messageFieldController,
                    maxLines:null,
                    decoration: InputDecoration(
                      hintText: 'Type Something...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                      )
                    ),
                    validator: (input){
                      if(input!=null && input.isEmpty)
                        return 'Message cannot be empty';
                    },
                    onChanged:onChangedMessage
                  ),
                ),
                IconButton(onPressed: submit, icon: Icon(Icons.send))
              ],
            ),
          ),
          SizedBox(height: 5,)
        ],
      ),
    );
  }
}