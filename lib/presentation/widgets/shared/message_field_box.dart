import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(20));

    final inputDecoration = InputDecoration(
        hintText: 'End your message...with a "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            print('send message');
          },
        ));

    return TextFormField(
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('submit $value');
        textController.clear();
      },
      onChanged: (value) {
        print('change $value');
      },
    );
  }
}
