import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  //ScrollController es usado para manejar el scroll de un widget
  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: 'Hola Maritza..', fromWho: FromWho.me),
    Message(text: 'Ya volviste del trabajo?', fromWho: FromWho.hers),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    //sirve para notificar a los widgets que estan escuchando
    notifyListeners();
    moveScrollToBottom();
  }

//mover el scroll al final
  Future<void> moveScrollToBottom() async {
    //es usado para hacer una pausa en la ejecucion del codigo
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
