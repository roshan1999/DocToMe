import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'Registeration1.dart';
import 'RoundTextfields.dart';
import 'LogRButton.dart';
import 'Heading.dart';

void main() {
  runApp(MaterialApp(
    home: LoginMain(),
  ));
}

class LoginMain extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginMain> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenInfo = MediaQuery.of(context);
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment(-0.5,1.0),
                    colors: [
                      Color.fromRGBO(53, 242, 152, 0.55),
                      Color.fromRGBO(0, 102, 255, 0.75),
                    ],
                    stops: [
                      0.1,
                      .9,
                    ])),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: screenInfo.size.height * (119/823),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * (75/823),
                      width: screenInfo.size.width * (39/411),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * (75/823),
                      width: screenInfo.size.width * (336/411),
                      child: Container(
                        alignment: Alignment.center,
                        child: PreScribeHeading(),
                      ),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * (75/823),
                      width: screenInfo.size.width * (36/411),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * (28/823),
                      width: screenInfo.size.width * (95/411),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * (28/823),
                      width: screenInfo.size.width * (222/411),
                      child: Container(
                        child: Text(
                          'Sign In To Your Account',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * (28/823),
                      width: screenInfo.size.width * (94/411),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * 91/823,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * 53/823,
                      width: screenInfo.size.width * 63/411,
                    ),
                    SizedBox(
                      height : screenInfo.size.height * 53/823,
                      width: screenInfo.size.width * 288/411,
                      child: Container(
                        child: RoundedTextField("Email", nameController, 'text'),
                      ),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * 53/823,
                      width: screenInfo.size.width * 60/411,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * 27/823,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * 54/823,
                      width: screenInfo.size.width * 63/411,
                    ),
                    SizedBox(
                      height : screenInfo.size.height * 53/823,
                      width: screenInfo.size.width * 288/411,
                      child: Container(
                        child: RoundedTextField(
                            "Password", passwordController, 'password'),
                      ),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * 54/823,
                      width: screenInfo.size.width * 60/411,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * 31/823,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * 53/823,
                      width: screenInfo.size.width * 63/411,
                    ),
                    SizedBox(
                      height: screenInfo.size.height * 53/823,
                      width: screenInfo.size.width * 288/411,
                      child: Container(
                        child: LogRButton('Sign In','Sign In'),
                      ),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * 53/823,
                      width: screenInfo.size.width * 60/411,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * 28/823,
                      width: screenInfo.size.width * 180/411,
                    ),
                    SizedBox(
                      height: screenInfo.size.height * 28/823,
                      width: screenInfo.size.width * 201/411,
                      child: Container(
                        alignment: Alignment.center,
                        child: FlatButton(
                          onPressed: () {
                            //forgot password screen
                          },
                          textColor: Colors.white,
                          child: Text('Forgot Password?'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * 28/823,
                      width: screenInfo.size.width * 30/411,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * 50/823,
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * 53/823,
                      width: screenInfo.size.width * 63/411,
                    ),
                    SizedBox(
                      height: screenInfo.size.height * 53/823,
                      width: screenInfo.size.width * 288/411,
                      child: Container(
                        child: SignInButton(
                          Buttons.Google,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19.0)
                          ),
                          onPressed: ()
                          {

                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * 53/823,
                      width: screenInfo.size.width * 60/411,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * 50/823,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * 28/823,
                      width:  screenInfo.size.width * 58/411,
                    ),
                    SizedBox(
                      height: screenInfo.size.height * 28/823,
                      width:  screenInfo.size.width * 320/411,
                      child: Container(
                          child: Row(
                        children: <Widget>[
                          Text('Don\'t have an account?',
                              style: GoogleFonts.roboto( textStyle : TextStyle(
                                  fontSize: 18,
                                  color: Colors.white),
                              ),
                          ),
                          FlatButton(
                            textColor: Color.fromRGBO(40, 44, 53, 1.0),
                            child: Text(
                              'Sign up',
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 18),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(context , MaterialPageRoute( builder : (context) => Registration1()));
                            },
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      )),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * 28/823,
                      width:  screenInfo.size.width * 33/411,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * 62/823,
                    )
                  ],
                )
              ],
            )));
  }
}
