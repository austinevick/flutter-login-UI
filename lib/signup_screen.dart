import 'package:flutter/material.dart';

import 'signin_screen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

var select = false;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
         image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                fit: BoxFit.cover,
                image: AssetImage('images/beautiful_girl.jpg'))),
           
        child: ListView(
          padding: EdgeInsets.all(15),
          children: <Widget>[
            AnimatedContainer(curve: Curves.slowMiddle,
              height: select ? 0.0 : MediaQuery.of(context).size.height,
              color: Colors.transparent,
              duration: Duration(milliseconds: 3000),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        flex: 0,
                        child: TextFormField(
                          keyboardAppearance: Brightness.dark,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.white70),
                              hintText: 'Full name',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.white))),
                        )),
                    SizedBox(
                      height: 25,
                    ),
                    Expanded(
                        flex: 0,
                        child: TextFormField(
                          keyboardAppearance: Brightness.dark,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.white70),
                              hintText: 'Email',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.white))),
                        )),
                    SizedBox(
                      height: 25,
                    ),
                    Expanded(
                        flex: 0,
                        child: TextFormField(
                          keyboardAppearance: Brightness.dark,
                          
                          obscureText: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.white70),
                              hintText: 'Country',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.white))),
                        )),
                    SizedBox(
                      height: 25,
                    ),
                    Expanded(
                        flex: 0,
                        child: FlatButton(
                          color: Colors.transparent,
                          padding: EdgeInsets.only(
                              left: 25, right: 25, bottom: 15, top: 15),
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 0,
                          child: Text(
                            'Already have an account?',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 10),
                        Expanded(
                          flex: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignIn();
                              }));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
