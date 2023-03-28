// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:groupie/widgets/widgets.dart';

import '../pages/chat_page.dart';

class GroupTile extends StatefulWidget {
  final String groupId;
  final String groupName;
  final String username;
  const GroupTile({
    Key? key,
    required this.groupId,
    required this.groupName,
    required this.username,
  }) : super(key: key);

  @override
  State<GroupTile> createState() => _GroupTileState();
}

class _GroupTileState extends State<GroupTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        nextScreen(context,  ChatPage(
          groupId: widget.groupId,
          groupName: widget.groupName,
          userName: widget.username,
        ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).primaryColor,
            child: Text(
              widget.groupName.substring(0, 1).toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            
          ),
          title: Text(widget.groupName,style: const TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("Join the conversation as ${widget.username}"   ,
          style: const TextStyle(fontSize: 13),),
        ),
      ),
    );
  }
}
