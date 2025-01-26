//Snipeet: importM
import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

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
        title: const Text('My amor ❤️'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}
//widget personalizado
class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const MyMessageBubble();
                },
              ),
            ),
            Text('Chat view'),
          ],
        ),
      ),
    );
  }
}

