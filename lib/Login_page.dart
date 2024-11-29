import 'package:crypto/constants/constant.dart';
import 'package:crypto/blog_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black45,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('images/cryptoTen.jpg'),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      ' Wellcome back!',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          hintStyle: TextStyle(
                              color: Colors.grey.withOpacity(0.4),
                              fontSize: 12,
                              fontFamily: ''),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 300,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: Colors.grey.withOpacity(0.4),
                              fontSize: 12,
                              fontFamily: ''),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: backgroundColorOne,
                          minimumSize: Size(300, 40)),
                      onPressed: () {
                        getRoutPage(context, BlogPage());
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100,
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'or continue with',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Container(
                          width: 100,
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image(
                            width: 60,
                            height: 60,
                            image: AssetImage('images/google.png'),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image(
                            width: 50,
                            height: 50,
                            image: AssetImage('images/facebook.png'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Dont have an account?',
                      style: TextStyle(color: Colors.blueGrey.withOpacity(0.6)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
