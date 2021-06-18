import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pab_nfc/json/info_json.dart';

class InfoCard extends StatefulWidget {
  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 351,
            constraints: BoxConstraints(maxHeight: double.infinity),
            margin: EdgeInsets.only(left: 32, right: 31),
            padding: EdgeInsets.only(top: 22, left: 26, right: 31, bottom: 20),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              children: [
                getHead(),
                SizedBox(
                  height: 20,
                ),
                getBody(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getHead() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(itemsType.length, (index) {
          return Column(
            children: [
              IconButton(
                  icon: Icon(
                    itemsType[index]['icon'],
                    size: 40,
                    color:
                        Colors.white.withOpacity(isActive == index ? 0.3 : 0.8),
                  ),
                  onPressed: () {
                    setState(() {
                      isActive = index;
                    });
                  }),
              Text(
                itemsType[index]['type'],
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          );
        }));
  }

  Widget getBody() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.stop_circle_rounded,
                color: Color(0xffF80000),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                isActive == 0
                    ? "CEK TARIF TOL"
                    : isActive == 1
                        ? "CEK TARIF TransJakarta"
                        : isActive == 2
                            ? "CEK TARIF MRT"
                            : isActive == 3
                                ? "CEK TARIF LRT"
                                : "CEK TARIF PERJALANAN",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Table(
            border: TableBorder.all(color: Colors.white),
            columnWidths: const <int, TableColumnWidth>{
              0: FlexColumnWidth(),
              1: FlexColumnWidth()
            },
            children: List.generate(
                isActive == 0
                    ? infoTol.length
                    : isActive == 1
                        ? infoTransJakarta.length
                        : isActive == 2
                            ? infoMrt.length
                            : isActive == 3
                                ? infoLrt.length
                                : infoNull.length,
                (index) => TableRow(children: [
                      Center(
                        child: Text(
                          isActive == 0
                              ? infoTol[index]['rute']
                              : isActive == 1
                                  ? infoTransJakarta[index]['rute']
                                  : isActive == 2
                                      ? infoMrt[index]['rute']
                                      : isActive == 3
                                          ? infoLrt[index]['rute']
                                          : infoNull[index]['rute'],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Center(
                        child: Text(
                          isActive == 0
                              ? infoTol[index]['tarif']
                              : isActive == 1
                                  ? infoTransJakarta[index]['tarif']
                                  : isActive == 2
                                      ? infoMrt[index]['tarif']
                                      : isActive == 3
                                          ? infoLrt[index]['tarif']
                                          : infoNull[index]['tarif'],
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ])),
          )
        ],
      ),
    );
  }
}
