import 'package:crypto/Login_page.dart';
import 'package:crypto/constants/constant.dart';
import 'package:flutter/material.dart';

class WellcomPage extends StatelessWidget {
  const WellcomPage({super.key});
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
      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/cryptoImage.jpg'),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 70, left: 50, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: backgroundColorTwo,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(3),
                            child: Text(
                              'Happy Crypto ',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Regular',
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.w300,
                          fontFamily: '',
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 300,
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(150, 40),
                            foregroundColor: Colors.black,
                            side: BorderSide(
                                color: backgroundColorTwo, width: 1.5)),
                        onPressed: () {
                          getRoutPage(context, LoginPage());
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          backgroundColor: backgroundColorTwo,
                          minimumSize: Size(150, 40),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text(
                          'sign up',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w200),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 20, top: 5),
                          child: Text(
                            'forgot password',
                            style: TextStyle(
                                color: Colors.blueGrey[400], fontSize: 11),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
