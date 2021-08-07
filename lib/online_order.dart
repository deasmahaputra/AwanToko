import 'package:flutter/material.dart';

class OnlineOrder extends StatelessWidget {
  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  void _indexButton(){

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                child: Text(
                  "Pesan Barang",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: const Color(0xFF4F4F4F)),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 16.0),
            child: Card(
                child: DecoratedBox(
              decoration: BoxDecoration(
                  color: hexToColor("#F1F8FC"),
                  image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      image: AssetImage('assets/ic_bg_online_order.png'))),
              child: Row(
                children: [
                  Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Belanja Online di AwanToko",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xff333333),
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 16.0),
                              child: Text(
                                "Upload daftar belanja kamu dan pesan barang sekarang!",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: const Color(0xff333333),
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: RaisedButton(
                                child: Text(
                                  "Pesan Barang",
                                  style: new TextStyle(fontWeight: FontWeight.bold),
                                ),
                                onPressed: _indexButton,
                                color: Colors.blue,
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0)),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 4,
                      child: Column(
                        children: [Image.asset('assets/ic_online_order.png')],
                      ))
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
