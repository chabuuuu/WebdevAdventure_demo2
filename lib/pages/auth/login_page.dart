import 'package:chatapp_firebase/helper/helper_function.dart';
import 'package:chatapp_firebase/pages/auth/register_page.dart';
import 'package:chatapp_firebase/pages/home_page.dart';
import 'package:chatapp_firebase/service/auth_service.dart';
import 'package:chatapp_firebase/service/database_service.dart';
import 'package:chatapp_firebase/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:chatapp_firebase/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool _isLoading = false;
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
     double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      // appBar: AppBar(backgroundColor: Color.fromRGBO(52, 168, 83, 100)),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor),
            )
          : 

            Stack(
              children: <Widget>[
              Container(
          // androidlogin1YHL (20:390)
          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            border: Border.all(color: Color(0xff000000)),
            color: Color(0xff131622),
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/dreamstimefree_1835134.jpg',
              ),
            ),
          ),
              ),

              Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(6.25*fem, 0*fem, 0*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(137*fem, 12*fem, 137*fem, 12*fem),
              ),
               Align(
                alignment: AlignmentDirectional.bottomCenter,
                 child: SingleChildScrollView(
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
                      child: Form(
                          key: formKey,
                          child: 
                             Column(
                              
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                // const Text(
                                  
                                //   "Đăng nhập",
                                //   style: TextStyle(
                                //     color: Color.fromARGB(255, 255, 255, 255),
                                //       fontSize: 44, fontWeight: FontWeight.bold),
                                // ),
                                RichText(
                              text:     TextSpan(
                                    text: 'Log in for free',
                                    style: SafeGoogleFont (
                                      'Playball',
                                      fontSize: 36*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2222222222*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                // const Text("From Nhungnguoithocode withluv",
                                //     style: TextStyle(
                                //         fontSize: 12, fontWeight: FontWeight.w400)),
                                 Text(
                            // fromnhungnguoithocodewithluvWQ (20:395)
                            'From Nhungnguoithocode withluv',
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 10*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5555555556*ffem/fem,
                              letterSpacing: 0.150000006*fem,
                              color: Color(0xff9b9c9e),
                            ),

                          ),
                              const SizedBox(height: 20),
                                // Image.asset("assets/login.png"),
                                TextFormField(
                                  cursorColor: Colors.white,
                                  style: TextStyle(color: Colors.white),
                                  decoration: textInputDecoration.copyWith(
                                    labelStyle: TextStyle(color: Color(0xff9b9c9e)),
                                      labelText: "Email",
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Color.fromRGBO(182, 240, 156, 100),
                                      )),
                                  onChanged: (val) {
                                    setState(() {
                                      email = val;
                                    });
                                  },
                          
                                  // check tha validation
                                  validator: (val) {
                                    return RegExp(
                                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                            .hasMatch(val!)
                                        ? null
                                        : "Please enter a valid email";
                                  },
                                ),
                                const SizedBox(height: 15),
                                TextFormField(
                                  style: TextStyle( color: Color.fromARGB(255, 255, 255, 255)),
                                  cursorColor: Colors.white,
                                  obscureText: true,
                                  decoration: textInputDecoration.copyWith(
                                    labelStyle: TextStyle(color: Color(0xff9b9c9e)),
                                      labelText: "Mật khẩu",
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: Color.fromRGBO(182, 240, 156, 100),
                                      )),
                                  validator: (val) {
                                    if (val!.length < 6) {
                                      return "Password must be at least 6 characters";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onChanged: (val) {
                                    setState(() {
                                      password = val;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color.fromRGBO(182, 240, 156, 100),
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30))),
                                    child: const Text(
                                      "Đăng nhập",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                                    onPressed: () {
                                      login();
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text.rich(TextSpan(
                                  text: "Không có tài khoản hả? ",
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 14),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "Click đây bạn êii!",
                                        style: const TextStyle(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                            decoration: TextDecoration.underline),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            print("Sang man hinh tiep theo");
                                            nextScreen(context, const RegisterPage());
                                          }),
                                  ],
                                )),
                              ],
                            ),
                          ),
                    ),
                  ),
               ),
              ],
            ),
          
    );
  }

  login() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
          .loginWithUserNameandPassword(email, password)
          .then((value) async {
        if (value == true) {
          QuerySnapshot snapshot =
              await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
                  .gettingUserData(email);
          // saving the values to our shared preferences
          await HelperFunctions.saveUserLoggedInStatus(true);
          await HelperFunctions.saveUserEmailSF(email);
          await HelperFunctions.saveUserNameSF(snapshot.docs[0]['fullName']);
          nextScreenReplace(context, const HomePage());
        } else {
          showSnackbar(context, Colors.red, value);
          setState(() {
            _isLoading = false;
          });
        }
      });
    }
  }
}
