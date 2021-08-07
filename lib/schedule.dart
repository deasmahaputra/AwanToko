import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  void _indexButton() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 16.0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                leading: Image.asset('assets/ic_calendar_awan_tempo.png',
                    width: 32, height: 32),
                title: const Text('Belanja pada tanggal ini?'),
                subtitle: Text(
                  'Rabu, 29 April 2020',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 8.0, 16.0),
                      child: RaisedButton(
                        child: Text(
                          "Ubah",
                          style: new TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: _indexButton,
                        color: Colors.white,
                        textColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            side: BorderSide(color: Colors.blue)),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 16.0, 16.0),
                        child: RaisedButton(
                    child: Text(
                        "Ya",
                        style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: _indexButton,
                    color: Colors.blue,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0)),
                  ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
