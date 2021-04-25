import 'package:flutter/material.dart';
import 'package:pab_nfc/tag_read.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAB NFC'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TagReadPage.create())),
        child: Icon(Icons.settings_input_antenna),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: Center(
        child: Text('click button below for read your NFC!')
      ),
    );
  }
}

// Route<dynamic> _generateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case '/tag_read':
//       return MaterialPageRoute(
//         builder: (context) => TagReadPage.create(),
//       );
//     default:
//       return null;
//   }
// }