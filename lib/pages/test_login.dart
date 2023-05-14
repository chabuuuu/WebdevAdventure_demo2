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
class LoginPage_test extends StatefulWidget {
  const LoginPage_test({Key? key}) : super(key: key);

  @override
  State<LoginPage_test> createState() => _LoginPageState_test();
}

class _LoginPageState_test extends State<LoginPage_test> {
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
      body: Container(
         width: double.infinity,
        child: Container(
          // androidlogin1YHL (20:390)
          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            border: Border.all(color: Color(0xff000000)),
            color: Color(0xff131622),
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/page-1/images/dreamstimefree1835134-2-bg.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // logoteam3QaS (20:468)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                width: 16*fem,
                height: 15*fem,
                child: Image.asset(
                  'assets/page-1/images/logoteam-3.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // contentj6v (20:392)
                margin: EdgeInsets.fromLTRB(13.75*fem, 0*fem, 0*fem, 0*fem),
                width: 483.25*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // headingeza (20:393)
                      margin: EdgeInsets.fromLTRB(6.25*fem, 0*fem, 0*fem, 64*fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // loginforfreeQD4 (20:394)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont (
                                  'Plus Jakarta Sans',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2222222222*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Log in for free',
                                    style: SafeGoogleFont (
                                      'Playball',
                                      fontSize: 36*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2222222222*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '!!!',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            // fromnhungnguoithocodewithluvWQ (20:395)
                            'From Nhungnguoithocode withluv',
                            style: SafeGoogleFont (
                              'Plus Jakarta Sans',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5555555556*ffem/fem,
                              letterSpacing: 0.150000006*fem,
                              color: Color(0xff9b9c9e),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // form2te (20:396)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // fieldsPDQ (20:397)
                            margin: EdgeInsets.fromLTRB(6.25*fem, 0*fem, 0*fem, 0*fem),
                            width: 477*fem,
                            height: 192*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // inputJLN (20:398)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Container(
                                    width: 321*fem,
                                    height: 120*fem,
                                    child: Container(
                                      // autogrouparaoddY (F4a7FPs5YWmDCaqkwzARao)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 72*fem),
                                      width: double.infinity,
                                      height: 48*fem,
                                      child: Container(
                                        // fieldmjk (I20:398;302:1029)
                                        padding: EdgeInsets.fromLTRB(16*fem, 12*fem, 16*fem, 12*fem),
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          color: Color(0xff1a1d21),
                                          borderRadius: BorderRadius.circular(8*fem),
                                          border: Border (
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3d84dcf5),
                                              offset: Offset(0*fem, 0*fem),
                                              blurRadius: 0*fem,
                                            ),
                                          ],
                                        ),
                                        child: Container(
                                          // autogroupgmzfU8N (F4a7ME2hQdpzjV1ba5GMzF)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 211*fem, 0*fem),
                                          padding: EdgeInsets.fromLTRB(36*fem, 0*fem, 0*fem, 0*fem),
                                          width: 78*fem,
                                          height: double.infinity,
                                          child: TextFormField(
                                             decoration: textInputDecoration.copyWith(
                                labelText: "Email",
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Theme.of(context).primaryColor,
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
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // input7x2 (20:399)
                                  left: 0*fem,
                                  top: 72*fem,
                                  child: Container(
                                    width: 477*fem,
                                    height: 120*fem,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // autogroupxaak23Q (F4a7zYHrYDSpYSVm9qXAaK)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 48*fem),
                                          width: double.infinity,
                                          height: 48*fem,
                                          child: Container(
                                            // fieldZZ8 (I20:399;302:825)
                                            padding: EdgeInsets.fromLTRB(16*fem, 12*fem, 16*fem, 12*fem),
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: Color(0xff363a3d)),
                                              color: Color(0xff1a1d21),
                                              borderRadius: BorderRadius.circular(8*fem),
                                            ),
                                            child: Container(
                                              // autogroupwjgxtLW (F4a86Co5qRHEtWmwvqWJgX)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 332*fem, 0*fem),
                                              padding: EdgeInsets.fromLTRB(36*fem, 0*fem, 0*fem, 0*fem),
                                              width: 113*fem,
                                              height: double.infinity,
                                              child: TextFormField(
                                                
                            obscureText: true,
                            decoration: textInputDecoration.copyWith(
                                labelText: "Mật khẩu",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Theme.of(context).primaryColor,
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
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroupqietobt (F4a8QSmgyv1jpvnu6zqiET)
                                          margin: EdgeInsets.fromLTRB(1.33*fem, 0*fem, 0*fem, 0*fem),
                                          padding: EdgeInsets.fromLTRB(71.17*fem, 0*fem, 0*fem, 0*fem),
                                          child: Text(
                                            'Forgot Password?',
                                            style: SafeGoogleFont (
                                              'Plus Jakarta Sans',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              letterSpacing: 0.150000006*fem,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 48*fem,
                          ),
                          Container(
                            // buttonfPC (20:403)
                            margin: EdgeInsets.fromLTRB(6.25*fem, 0*fem, 0*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(137*fem, 12*fem, 137*fem, 12*fem),
                            width: 321*fem,
                            height: 48*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffb6f09c),
                              borderRadius: BorderRadius.circular(12*fem),
                            ),
                            child: Container(
                              // autogroupjexrmh8 (F4a8qGPfYfMAdxV8D9JeXR)
                              width: double.infinity,
                              height: double.infinity,
                              child: Center(
                                child: Text(
                                  'Log in',
                                  style: SafeGoogleFont (
                                    'Plus Jakarta Sans',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    letterSpacing: 0.150000006*fem,
                                    color: Color(0xff0c1132),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 48*fem,
                          ),
                          Container(
                            // socialbuttonsTpr (20:408)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 153.75*fem, 0*fem),
                            width: double.infinity,
                            height: 48*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // socialloginbuttonbRG (20:409)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.5*fem, 0*fem),
                                  padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 12*fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xff1a1d21),
                                    borderRadius: BorderRadius.circular(12*fem),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame6cv (I20:409;306:704)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                        width: 20*fem,
                                        height: 20*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/frame-L6i.png',
                                          width: 20*fem,
                                          height: 20*fem,
                                        ),
                                      ),
                                      Text(
                                        // valueDSe (I20:409;306:562)
                                        'Google Account',
                                        style: SafeGoogleFont (
                                          'Plus Jakarta Sans',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5*ffem/fem,
                                          letterSpacing: 0.150000006*fem,
                                          color: Color(0xff686b6e),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // socialloginbutton9r6 (20:410)
                                  padding: EdgeInsets.fromLTRB(2*fem, 12*fem, 0*fem, 12*fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xff1a1d21),
                                    borderRadius: BorderRadius.circular(12*fem),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frameGfp (I20:410;306:948)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.46*fem, 0*fem),
                                        width: 19.54*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/frame-xgv.png',
                                          width: 19.54*fem,
                                          height: 24*fem,
                                        ),
                                      ),
                                      Text(
                                        // valueC3g (I20:410;306:803)
                                        'Apple Account',
                                        style: SafeGoogleFont (
                                          'Plus Jakarta Sans',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5*ffem/fem,
                                          letterSpacing: 0.150000006*fem,
                                          color: Color(0xff686b6e),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 48*fem,
                          ),
                          Container(
                            // dividerhWE (20:404)
                            margin: EdgeInsets.fromLTRB(6.25*fem, 0*fem, 0*fem, 0*fem),
                            width: 321*fem,
                            height: 1*fem,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    
    
    
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
