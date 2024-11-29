import 'package:crypto/constants/constant.dart';
import 'package:crypto/custom_widget/post_blog_page.dart';
import 'package:crypto/exchange_page.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  void getRoutPage(context, page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Happy Crypto'),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_outlined,
          color: backgroundColorOne,
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Market value :  24 %',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            Text(
                              'Binance : 53 %',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            Text(
                              'Dollar : 57 T',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    getPostBlog(
                        nameArz: 'bitcoin', price: ' 42,000', swing: 0.25),
                    SizedBox(
                      height: 10,
                    ),
                    getPostBlog(
                        nameArz: 'bitcoin', price: ' 42,000', swing: 0.75),
                    SizedBox(
                      height: 10,
                    ),
                    getPostBlog(
                        nameArz: 'bitcoin', price: ' 42,000', swing: 0.15),
                    SizedBox(
                      height: 10,
                    ),
                    getPostBlog(
                        nameArz: 'bitcoin', price: ' 42,000', swing: 0.34),
                    SizedBox(
                      height: 10,
                    ),
                    getPostBlog(
                        nameArz: 'bitcoin', price: ' 42,000', swing: 0.5),
                    SizedBox(
                      height: 10,
                    ),
                    getPostBlog(
                        nameArz: 'bitcoin', price: ' 42,000', swing: 1.00),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: backgroundColorOne,
                          foregroundColor: Colors.white),
                      onPressed: () {},
                      child: Text('Calculator '),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: backgroundColorOne,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        getRoutPage(context, ExchangePage());
                      },
                      child: Text('Changer'),
                    ),
                    OutlinedButton(
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: backgroundColorOne),
                          foregroundColor: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Exit '),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
