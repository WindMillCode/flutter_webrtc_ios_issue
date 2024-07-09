import 'package:flutter/material.dart';
import 'package:windmillcode_peerdart/peerdart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var peer = Peer();
  await peer.init();
  print(peer.id);
  // connect first grab the id then on the receiver connect and debugger the negotiator from windmillcode_peerdart
  // var conn = peer.connect("1c4914b7-9d2e-4391-bff6-c61a47638f18");
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
