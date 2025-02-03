import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola Maritza..', fromWho: FromWho.me),
    Message(text: 'Ya volviste del trabajo?', fromWho: FromWho.hers),
  ];

  Future<void> sendMessage(String text) async {
   final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    //sirve para notificar a los widgets que estan escuchando
    notifyListeners();
  }
}
