import 'package:flutter/material.dart';

class InfoAndPromo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
            child: Text(
              "Info dan Promo",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: const Color(0xFF4F4F4F)),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
