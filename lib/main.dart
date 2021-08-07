import 'package:awan_toko/Info_and_promo.dart';
import 'package:awan_toko/line_of_credit.dart';
import 'package:awan_toko/notification.dart';
import 'package:awan_toko/schedule.dart';
import 'package:flutter/material.dart';

import 'online_order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Row(
      //       children: <Widget>[
      //         Image.asset(
      //           'assets/ic_awan_toko_logo.png',
      //           width: 110,
      //           height: 20,
      //         ),
      //       ],
      //     ),
      //     backgroundColor: Colors.white,
      //   ),
      //   body: Column(
      //     children: <Widget>[LineOfCredit(), Schedule()],
      //   ),
      // ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.asset(
              'assets/ic_awan_toko_logo.png',
              width: 110,
              height: 20,
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Expanded(child: Column(
              children: [
                LineOfCredit(),
                Schedule(),
                NotificationHome(),
                Divider(
                  thickness: 8.0,
                  color: const Color(0xffF2F2F2),
                ),
                OnlineOrder(),
                InfoAndPromo(),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/ic_nav_home.png")),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/ic_nav_cart.png")),
            label: 'Pesan Barang',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/ic_nav_loan.png")),
            label: 'Pinjamanmu',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/ic_nav_account.png")),
            label: 'Akun',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
