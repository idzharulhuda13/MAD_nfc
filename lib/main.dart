import 'package:flutter/material.dart';
import 'package:pab_nfc/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff001241),
        body: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          },
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 49,
                  height: 31,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
              SizedBox(
                width: 11,
              ),
              Text(
                'DIGI',
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
        ));
  }
}


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('PAB NFC'),
//         centerTitle: true,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TagReadPage.create())),
//         child: Icon(Icons.settings_input_antenna),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//
//       body: Center(
//         child: Text('click button below for read your NFC!')
//       ),
//     );
//   }
// }

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