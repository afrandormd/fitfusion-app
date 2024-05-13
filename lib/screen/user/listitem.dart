import 'package:flutter/material.dart';
import 'package:fitfusion_app/config/assets.dart';

Widget listItem(String bg, String title, int exercices, int time) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(bottom: 10.0),
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bg),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Color(0x60212121), BlendMode.darken),
        ),
        borderRadius: BorderRadius.circular(15.0)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Asset.colorText,
              fontSize: 24.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "${exercices} Latihan",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            "${time} Menit per Hari",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  );
}
