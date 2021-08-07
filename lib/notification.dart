import 'package:flutter/material.dart';

class NotificationHome extends StatelessWidget {
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
                  "Notifikasi",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: const Color(0xFF4F4F4F)),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Lihat Semua",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.blue),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 16.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 4.0),
                            child: Text(
                              "4 Sep 2020 - 12.03 WIB",
                              style: TextStyle(
                                  fontSize: 10.0, color: const Color(0xff9B9B9B)),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 4.0),
                            child: Text(
                              "Stok warung kosong?",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xff333333),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "Kamu masih punya limit Awan Tempo. Yuk belanja stok kamu. Jualan terus, untung terus!",
                            style: TextStyle(
                                fontSize: 14.0, color: const Color(0xff333333)),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                'assets/ic_arrow_right_blue.png',
                                height: 24.0,
                                width: 24.0,
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
