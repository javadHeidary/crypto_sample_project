import 'package:crypto/constants/constant.dart';
import 'package:flutter/material.dart';

Widget getPostBlog({
  required String nameArz,
  required String price,
  required double swing,
}) {
  return Container(
    decoration: BoxDecoration(
      color: backgroundColorOne,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Arz',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Price',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Swing',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Buy',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Wrap(
                children: [
                  Image(
                    width: 30,
                    height: 30,
                    image: AssetImage('images/bitcoin.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      '$nameArz',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Text('$price', style: TextStyle(color: Colors.white)),
              Container(
                width: 60,
                height: 20,
                decoration: BoxDecoration(
                  color: getArrowColoe(swing),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Text(
                  '$swing %',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              IconButton(
                style: IconButton.styleFrom(
                  side: BorderSide(color: Colors.grey),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.local_mall_outlined,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Color getArrowColoe(double Arrow) {
  if (Arrow > 0.5) {
    return Colors.greenAccent;
  }
  return Colors.red;
}
