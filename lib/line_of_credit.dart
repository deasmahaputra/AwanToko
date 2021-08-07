import 'package:flutter/material.dart';

class LineOfCredit extends StatelessWidget {
  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: hexToColor("#075EA5"),
              image: DecorationImage(
                  image: AssetImage('assets/ic_bg_line_of_credit.png'))),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
                      child: Column(
                        children: [
                          Text(
                            "Limit Pinjaman",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Rp490.000.000",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ))),
              Expanded(
                  child: Container(height: 40, child : VerticalDivider(width: 1, color: Colors.white,),)),
              Expanded(
                  flex: 2,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
                      child: Column(
                        children: [
                          Text(
                            "Tenor",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "7 Hari",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ))),
              Expanded(
                  child: Container(height: 40, child : VerticalDivider(width: 1, color: Colors.white,),)),
              Expanded(
                  flex: 4,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
                      child: Column(
                        children: [
                          Text(
                            "Masa Limit Pinjaman",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "4 Desember 2020",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                            textAlign: TextAlign.left,
                          )
                        ],
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
