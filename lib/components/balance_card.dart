import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pab_nfc/tag_read.dart';

class BalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 351,
      height: 206,
      margin: EdgeInsets.only(left: 32, right: 31),
      padding: EdgeInsets.only(top: 26, left: 18, right: 26, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.stop_circle_rounded,
                color: Color(0xff00F819),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'SISA SALDO',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '120.000',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 48),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '25/05/2021',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TagReadPage.create()));
                },
                child: Container(
                  width: 136,
                  height: 37,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(
                      'Baca Kartu NFC',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
