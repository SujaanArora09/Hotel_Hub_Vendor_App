import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel_app/Screens/Registered.dart';
import 'package:hotel_app/widgets/Navigation.dart';
import 'package:hotel_app/Screens/emailsent.dart';
import 'package:hotel_app/widgets/custombutton.dart';
import 'package:hotel_app/widgets/customtextfield.dart';
import 'package:hotel_app/widgets/socialmediabutton.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInState();
}

class _LogInState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/loginpage.png'),

              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                margin: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Container(
                      width: 110,
                      height: 1,
                      color: const Color(0xffd4d1d1),
                    ),
                    const Text(
                      "Log in",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff626262),
                        fontSize: 18,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: 110,
                      height: 1,
                      color: const Color(0xffd4d1d1),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: CustomTextField(hintText: 'Enter Email',
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: CustomTextField(hintText: 'Password',
                  )),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 30,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        textStyle: const TextStyle(
                          fontSize: 10,
                          decoration: TextDecoration.underline,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),

                      ), onPressed: () {  },
                      child: const Text('Forgot Password'),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: CustomButton(
                  text: 'Continue',
                  onClick: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Registered()),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Container(
                      width: 140,
                      height: 1,
                      color: const Color(0xffd4d1d1),
                    ),
                    const Text(
                      "or",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff626262),
                        fontSize: 18,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 1,
                      color: const Color(0xffd4d1d1),
                    ),
                  ],
                ),
              ),
              SocialAuthButton(),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    const Text(
                      "By Continuing, you agree to our",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              textStyle: const TextStyle(
                                fontSize: 10,
                                decoration: TextDecoration.underline,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                              ),
                            ), onPressed: () {  },
                            child: const Text('Terms of Service'),
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          height: 30,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              textStyle: const TextStyle(
                                fontSize: 10,
                                decoration: TextDecoration.underline,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                              ),

                            ), onPressed: () {  },
                            child: const Text('Privacy Policy'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )


            ],
          ),
        )
      ),
    );
  }
}
