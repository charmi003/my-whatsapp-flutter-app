import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Camera extends StatefulWidget {
  const Camera({ Key? key }) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  var _image;
  var imagePicker;
  var type;

  @override
  void initState(){
    super.initState();
    imagePicker=ImagePicker();
  }

  Future openCamera() async{
    var image=await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image=File(image!.path);
      type='camera';
    });
  }

  Future openGallery() async{
    var image=await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image=File(image!.path);
      type='gallery';
    });
  }

  Future _optionsDialogBox() async{
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.teal,
        contentPadding: EdgeInsets.fromLTRB(20.0,50.0,20.0,50.0),
        shape: RoundedRectangleBorder(),
        // title:const Text('Choose from the below options'),
        content:SingleChildScrollView(
          child: ListBody(
            children: [
              GestureDetector(
                child:Text('Take a picture',style:TextStyle(color:Colors.white,fontSize: 20)),
                onTap: openCamera,
              ),
              Padding(padding: EdgeInsets.fromLTRB(0,15,0,15)),
              GestureDetector(
                child:Text('Select image from gallery',style:TextStyle(color:Colors.white,fontSize: 20)),
                onTap: openGallery,
              )
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                color:Colors.red[200]
              ),
              child: _image==null ?
              Container(
                width:200.0,
                height: 200.0,
                decoration:BoxDecoration(
                  color:Colors.red[200]
                ),
                child: Icon(
                  Icons.camera_alt,
                  color:Colors.grey[800]
                )
              )
              :  Image.file(
                _image,
                height:200.0,
                width:200.0,
                fit:BoxFit.contain
              ),
            ),

            ElevatedButton(onPressed: _optionsDialogBox, child: Text('Pick a Photo'))
          ],
        )
      );
  }
}