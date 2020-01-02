import 'package:flutter/material.dart';
import './signup_screen.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.transparent,
        body: Container( decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
              fit: BoxFit.contain,
              image: AssetImage('images/beautiful_girl.jpg'))),
      
      child: ListView(
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
                        decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white70),
                            hintText: 'Email',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white))),
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                      flex: 0,
                      child: TextFormField(
                        keyboardAppearance: Brightness.dark,
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white70),
                        hintText: 'Password',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white))),
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
                          'SIGN IN',
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Forgot password?',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don\'t have an account?",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignUp();
                            }));
                          });
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
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
    ));
  }
}
