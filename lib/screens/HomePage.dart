import 'package:flutter/material.dart';
import 'Calls.dart';
import 'Chats.dart';
import 'Camera.dart';
import 'Status.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController=TabController(length: 4, vsync: this,initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('WhatsApp',style:TextStyle(color:Colors.white)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search), color:Colors.white),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert), color:Colors.white)
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon:Icon(Icons.camera_alt,color:Colors.white)),
            Tab(child:Text('CHATS', style:Theme.of(context).textTheme.button)),
            Tab(child:Text('STATUS', style:Theme.of(context).textTheme.button)),
            Tab(child:Text('CALLS', style:Theme.of(context).textTheme.button))
          ],
        ),
      ),
      body:TabBarView(
        controller: _tabController,
        children: [
          Camera(),
          Chats(),
          Status(),
          Calls()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: const Icon(
          Icons.message,
          color:Colors.white
        ),
        onPressed: (){},
      ),

    );
  }
}

