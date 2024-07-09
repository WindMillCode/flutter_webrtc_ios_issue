import 'package:flutter/material.dart';
import 'package:windmillcode_peerdart/peerdart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var peer = Peer();
  await peer.init();
  print(peer.id);
  // connect first grab the id then on the receiver connect and debugger the negotiator from windmillcode_peerdart
  // var conn = peer.connect([PEER ID FROM SENDER HERE]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
