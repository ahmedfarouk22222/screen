import 'package:flutter/material.dart';

Widget walletAndVoteBox() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.blue.shade100),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // زر "صوت و زيدها"
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Color(0xFFEFF5FF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Text("« صوت و زيدها", style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),

        // الرصيد والمحفظة
        Row(
          children: [
            Text("IQD ", style: TextStyle(color: Colors.grey)),
            Text(
              "232,000",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(width: 6),
            Image.asset(
              'lib/assets/iconsax-wallet-minus-745w47sr-.png',
              height: 40,
            ), // أيقونة المحفظة
          ],
        ),
      ],
    ),
  );
}
