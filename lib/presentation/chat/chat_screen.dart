//Snipeet: importM
import 'package:flutter/material.dart';

//Snippet: Stlesw
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://image.tmdb.org/t/p/original/4JE0AVAey5e4iy2qxNlr3U7fawJ.jpg')),
        ),
        title: const Text('My amor :) '),
        centerTitle: false,
      ),
    );
  }
}
