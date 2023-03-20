import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering/screens/home/home_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:matcher/matcher.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // UserProvider userProvider;
  _googleSignIn() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      //khởi tạo phương thức đăng nhập GG
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      //authenticate đăng nhập
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      //lấy thông tin đăng nhập, token
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      //trả về thông tin user
      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);
      if (user == null) {
        return;
      } else {
        return user;
      }
    } catch (e) {
      throw (e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/background2.jpg'))),
        child: new BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 400,
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Vui lòng đăng nhập để tiếp tục',
                    ),
                    Text(
                      'LOGO',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Colors.green.shade900,
                                offset: Offset(3, 3))
                          ]),
                    ),
                    Column(
                      children: [
                        SignInButton(
                          Buttons.Google,
                          text: "Đăng nhập với Google",
                          onPressed: () {
                            _googleSignIn().then((value) =>
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen())));
                          },
                        ),
                        SignInButton(
                          Buttons.Apple,
                          text: "Đăng nhập với Apple",
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Bằng cách ấn đăng nhập, bạn đã đồng ý với chính sách, thỏa thuận của chúng tôi.',
                          style: TextStyle(color: Colors.white, shadows: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Colors.black,
                                offset: Offset(3, 3))
                          ]),
                          textAlign: TextAlign.center,
                        ),
                      ],

                      // Text(
                      //   'Chính sách và Điều khoản của chúng tôi.',
                      //   style: TextStyle(color: Colors.grey[600]),
                      //   textAlign: TextAlign.center,
                      // ),
                    )
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}
