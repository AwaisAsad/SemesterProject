import 'package:flutter/material.dart';
import 'package:uiapp1/pages/forgot_pw_page.dart';
import 'package:uiapp1/screens/product_overview_screen.dart';
import 'package:uiapp1/signup.dart';
import 'package:uiapp1/widgets/product_grid.dart';

import 'index.dart';
class email extends StatefulWidget {


  @override
  _emailState createState() => _emailState();
}

class _emailState extends State<email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

            appBar: AppBar(
            backgroundColor: Colors.lightGreen,

              title: Text('SignIn',style: TextStyle(color: Colors.white60),),
              actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.close_rounded,
                  color: Colors.white60,
                ),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => InputPage()));
                  });
                },
              )
              ],
            ),
            body: Padding(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    Icon(
                      Icons.android_outlined,
                      size: 100,
                    ),


                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child:const Text(
                          "Wellcome back, you\'ve been missed!",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            // controller: _emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            //controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotPasswordPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlue),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(12)),
                        height: 50,
                        width: 20,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.lightGreen,
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ProductOverviewScreen()));
                            });
                          },
                        )),
                    SizedBox(height: 15.0,),
                    // Container(
                    //     child: Row(
                    //       children: <Widget>[
                    //         Text('Does not have account?'),
                    //         FlatButton(
                    //           textColor: Colors.black87,
                    //           child: Text(
                    //             'Sign Up',
                    //             style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    //           ),
                    //           onPressed: () {
                    //             //signup screen
                    //             setState(() {
                    //               Navigator.push(context,
                    //                   MaterialPageRoute(builder: (context) => signUp()));
                    //             });
                    //           },
                    //         )
                    //       ],
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //     ))
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not a member?  ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),



                                     GestureDetector(
                                       child: Text(
                                        'Sign Up',

                                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent),
                                    ),

                                    onTap: () {
                                      //signup screen
                                      setState(() {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => signUp()));
                                      });
                                    },
                                  ),
                        // GestureDetector(
                        //   onTap: widget.showRegisterPage,
                        //   child: Text(
                        //     'Register now',
                        //     style: TextStyle(
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.lightBlue),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                )));



  }
}
