import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:band_names/src/services/socket_service.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);
    final socket = socketService.socket;

    void sendMessage() {
      socket.emit('emit-message', {'message': 'Hi this is a new message'});
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ServerStatus: ${socketService.serverStatus}'),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sendMessage();
        },
        child: Icon(Icons.message),
      ),
    );
  }
}
