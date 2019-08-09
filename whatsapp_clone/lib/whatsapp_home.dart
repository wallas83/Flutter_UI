import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/call_screen.dart';
import 'package:whatsapp_clone/pages/camera_screen.dart';
import 'package:whatsapp_clone/pages/chat_screen.dart';
import 'package:whatsapp_clone/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS"),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 5.0) ,
          ),
          Icon(Icons.more_vert)
        ],
      ),

      body:TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen()
        ],
      ) ,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message, color: Colors.white,),
        onPressed: () => print("message"),
      ),
    );
  }
}

