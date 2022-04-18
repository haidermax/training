// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unused_element

import 'package:flutter/material.dart';

void main() => runApp(Home());
var _passwordVisible = false;

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [const Color(0xff413f50), const Color(0xff312f3b)],
          )),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.account_circle,
                                color: const Color(0xff98d3d1),
                                size: 100,
                              ),
                              Text(
                                'Sign in',
                                style: TextStyle(
                                    color: const Color(0xff98d3d1),
                                    fontSize: 25),
                              )
                            ],
                          ),
                          Container(
                            height: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextFormField(
                                style: TextStyle(
                                  color: Color(0xff98d3d1),
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: 'Enter your Email',
                                  icon: Icon(
                                    Icons.mail,
                                    color: Color(0xff98d3d1),
                                  ),
                                  labelStyle: TextStyle(
                                      color: const Color(0xff98d3d1),
                                      fontSize: 15),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: TextFormField(
                                  obscureText: _passwordVisible,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff98d3d1), fontSize: 20),
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Enter your Password',
                                    icon: Icon(
                                      Icons.key,
                                      color: Color(0xff98d3d1),
                                    ),
                                    suffixIcon: IconButton(
                                        color: Color(0xff98d3d1),
                                        icon: Icon(
                                          // Based on passwordVisible state choose the icon
                                          _passwordVisible
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                        ),

                                        // Update the state i.e. toogle the state of passwordVisible variable
                                        onPressed: () {
                                          // Update the state i.e. toogle the state of passwordVisible variable
                                          setState(() {
                                            _passwordVisible =
                                                !_passwordVisible;
                                          });
                                        }),
                                    labelStyle: TextStyle(
                                        color: const Color(0xff98d3d1),
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                width: 400,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Log in'),
                                  style: ElevatedButton.styleFrom(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff98d3d1)),
                                      primary: Color(0xff434051),
                                      shadowColor: null,
                                      elevation: 3),
                                ),
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Text('Forgot you passowrd?',
                                      style: TextStyle(
                                          color:
                                              Color(0xff98d3d1).withAlpha(80),
                                          fontSize: 15))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              Container(
                height: 140,
                alignment: Alignment.bottomCenter,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Dont have account?',
                          style: TextStyle(
                              color: Color(0xff98d3d1).withAlpha(80),
                              fontSize: 15)),
                      InkWell(
                          onTap: () {},
                          child: Text('Create one',
                              style: TextStyle(
                                  color: Color(0xff98d3d1), fontSize: 15))),
                    ]),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
