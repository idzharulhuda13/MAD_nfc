import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pab_nfc/components/balance_card.dart';
import 'package:pab_nfc/components/info_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001241),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 55, left: 50, right: 31),
              width: 333,
              child: Text(
                'DIGI',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            SizedBox(
              height: 77,
            ),
            BalanceCard(),
            SizedBox(
              height: 29,
            ),
            InfoCard(),
          ],
        ),
      )),
    );
  }
}
